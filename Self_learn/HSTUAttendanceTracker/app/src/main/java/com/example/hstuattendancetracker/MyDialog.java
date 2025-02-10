package com.example.hstuattendancetracker;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.DialogFragment;

public class MyDialog extends DialogFragment {
    public  static final String CLASS_ADD_DIALOG = "addClass";
    public  static final String STUDENT_ADD_DIALOG = "addStudent";
    //for passing data to main:
    private OnClickListener listener;
    public interface  OnClickListener{
        void onClick(String text1,String text2);
    }

    public void setListener(OnClickListener listener) {
        this.listener = listener;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        Dialog dialog = null;
        if(getTag().equals(CLASS_ADD_DIALOG))dialog=getAddClassDialog();
        if(getTag().equals(STUDENT_ADD_DIALOG))dialog=getAddStudentDialog();
        return  dialog;

    }

    private Dialog getAddStudentDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View view = LayoutInflater.from(getActivity()).inflate(R.layout.dialog, null);
        builder.setView(view);

        TextView title = view.findViewById(R.id.titleDialog);
        title.setText("Add New Student");

        EditText studentId_edt = view.findViewById(R.id.edt01);
        EditText name_edt = view.findViewById(R.id.edt02);

        studentId_edt.setHint("StudentID");
        name_edt.setHint("Student name");
        Button cancel = view.findViewById(R.id.cancel_btn);
        Button add = view.findViewById(R.id.add_btn);

        cancel.setOnClickListener(v -> dismiss());

        add.setOnClickListener(v -> {
            String studentId = studentId_edt.getText().toString();
            String name = name_edt.getText().toString();
            name_edt.setText("");
            studentId_edt.setText(String.valueOf(Integer.parseInt(studentId)+1));
            listener.onClick(studentId,name);
        });
        return builder.create();
    }

    private Dialog getAddClassDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        View view = LayoutInflater.from(getActivity()).inflate(R.layout.dialog, null);
        builder.setView(view);

        TextView title = view.findViewById(R.id.titleDialog);
        title.setText("Add New Class");

        EditText class_edt = view.findViewById(R.id.edt01);
        EditText course_edt = view.findViewById(R.id.edt02);

        class_edt.setHint("Class Name");
        course_edt.setHint("Course Name");
        Button cancel = view.findViewById(R.id.cancel_btn);
        Button add = view.findViewById(R.id.add_btn);

        cancel.setOnClickListener(v -> dismiss());

        add.setOnClickListener(v -> {
            String className = class_edt.getText().toString();
            String courseName = course_edt.getText().toString();
            listener.onClick(className,courseName);
            dismiss();
        });
        return builder.create();
    }
}
