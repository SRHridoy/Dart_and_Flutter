package com.example.hstuattendancetracker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

public class ClassAdapter extends RecyclerView.Adapter<ClassAdapter.ClassViewHolder> {
    ArrayList<ClassItem> classItems;
    Context context;

    //interface for navigating to new activity:
    private  OnItemClickListener onItemClickListener;
    public interface OnItemClickListener{
        void onClick(int position);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.onItemClickListener = onItemClickListener;
    }

    public ClassAdapter(Context context, ArrayList<ClassItem> classItems) {
        this.classItems = classItems;
        this.context = context;
    }

    @NonNull
    @Override
    public ClassViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext()).inflate(R.layout.class_item,parent,false);
        return new ClassViewHolder(itemView,onItemClickListener);
    }

    @Override
    public void onBindViewHolder(@NonNull ClassViewHolder holder, int position) {
        holder.className.setText(classItems.get(position).getClassName());
        holder.courseName.setText(classItems.get(position).getCourseName());
    }

    @Override
    public int getItemCount() {
        return classItems.size();
    }

    public static  class ClassViewHolder extends RecyclerView.ViewHolder{
        TextView className;
        TextView courseName;
        public ClassViewHolder(@NonNull View itemView,OnItemClickListener onItemClickListener) {
            super(itemView);
            className = itemView.findViewById(R.id.class_tv);
            courseName = itemView.findViewById(R.id.course_tv);
            //find the position in which class I touch:
            itemView.setOnClickListener(v->onItemClickListener.onClick(getAdapterPosition()));
        }
    }
}
