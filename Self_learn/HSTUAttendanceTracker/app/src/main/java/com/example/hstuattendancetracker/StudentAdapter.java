package com.example.hstuattendancetracker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import org.w3c.dom.Text;

import java.util.ArrayList;

public class StudentAdapter extends RecyclerView.Adapter<StudentAdapter.StudentViewHolder> {
    ArrayList<StudentItem> studentItems;
    Context context;

    //interface for navigating to new activity:
    private  OnItemClickListener onItemClickListener;
    public interface OnItemClickListener{
        void onClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public StudentAdapter(Context context, ArrayList<StudentItem> studentItems) {
        this.studentItems = studentItems;
        this.context = context;
    }

    @NonNull
    @Override
    public StudentViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.student_item,parent,false);
        return new StudentViewHolder(itemView,onItemClickListener);
    }

    @Override
    public void onBindViewHolder(@NonNull StudentViewHolder holder, int position) {
        holder.studentId.setText(studentItems.get(position).getStudentId());
        holder.name.setText(studentItems.get(position).getName());
        holder.status.setText(studentItems.get(position).getStatus());
    }

    @Override
    public int getItemCount() {
        return studentItems.size();
    }

    public static  class StudentViewHolder extends RecyclerView.ViewHolder{
        TextView studentId;
        TextView name;
        TextView status;
        public StudentViewHolder(@NonNull View itemView, OnItemClickListener onItemClickListener) {
            super(itemView);
            studentId = itemView.findViewById(R.id.studentId);
            name = itemView.findViewById(R.id.studentName);
            status = itemView.findViewById(R.id.status);
            //find the position in which class I touch:
            itemView.setOnClickListener(v->onItemClickListener.onClick(getAdapterPosition()));
        }
    }
}
