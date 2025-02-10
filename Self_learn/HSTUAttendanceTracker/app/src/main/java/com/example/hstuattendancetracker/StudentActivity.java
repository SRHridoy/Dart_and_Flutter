package com.example.hstuattendancetracker;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;


import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class StudentActivity extends AppCompatActivity {
    Toolbar toolbar;
    private  String className;
    private  String courseName;
    private  int    position;
    RecyclerView recyclerView;
    StudentAdapter studentAdapter;
    RecyclerView.LayoutManager layoutManager;
    ArrayList<StudentItem> studentItems = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_student);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });

        //Fetching data from main intent:
        Intent intent = getIntent();
        className = intent.getStringExtra("className");
        courseName = intent.getStringExtra("courseName");
        position = intent.getIntExtra("position",-1);

        setToolbar();

        //setting recyclerview:
        recyclerView = findViewById(R.id.student_recyclerview);
        recyclerView.setHasFixedSize(true);
        layoutManager = new LinearLayoutManager(this);
        recyclerView.setLayoutManager(layoutManager);
        studentAdapter = new StudentAdapter(this,studentItems);
        recyclerView.setAdapter(studentAdapter);
    }

    private void setToolbar() {
        toolbar = findViewById(R.id.toolbar);
        TextView title = toolbar.findViewById(R.id.title_toolbar);
        TextView subtitle = toolbar.findViewById(R.id.subtitle_toolbar);
        ImageButton back = toolbar.findViewById(R.id.back_btn);
        ImageButton save = toolbar.findViewById(R.id.save);

        title.setText(className);
        subtitle.setText(courseName);

        back.setOnClickListener(v->onBackPressed());
        toolbar.inflateMenu(R.menu.student_menu);
        toolbar.setOnMenuItemClickListener(this::onMenuItemClicked);
    }

    private boolean onMenuItemClicked(MenuItem menuItem) {
        if(menuItem.getItemId()==R.id.add_student){
            showAddStudentDialog();
        }
        return true;
    }

    private void showAddStudentDialog() {
        MyDialog myDialog = new MyDialog();
        myDialog.show(getSupportFragmentManager(),MyDialog.STUDENT_ADD_DIALOG);

        myDialog.setListener(this::addStudent);
    }

    private void addStudent(String studentId, String studentName) {
        studentItems.add(new StudentItem(studentId,studentName));
        studentAdapter.notifyItemChanged(studentItems.size()-1);
    }
}