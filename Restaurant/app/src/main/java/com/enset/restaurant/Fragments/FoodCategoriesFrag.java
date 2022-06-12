package com.example.rabiy.styleomega14.Fragments;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.example.rabiy.styleomega14.Adapters.ListRecyclerAdapter;
import com.example.rabiy.styleomega14.Models.Item;
import com.example.rabiy.styleomega14.R;

import java.util.ArrayList;
import java.util.List;


public class FoodCategoriesFrag extends Fragment {

    List<Item> lstItem;




    public FoodCategoriesFrag(){
        // Required empty public constructor
    }

    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {



        // Inflate the layout for this fragment
        View rootView=inflater.inflate(R.layout.fragment_categories, container, false);

        //get a reference to recycler view
        RecyclerView recyclerView=rootView.findViewById(R.id.recycler_categories);

        //set layout manager
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));

        //the data for the recycler view
        lstItem=new ArrayList<>();
        lstItem.add(new Item("Seafood","https://media-cdn.tripadvisor.com/media/photo-s/18/3a/09/6c/bonefish-seafood-platter.jpg","food"));
        lstItem.add(new Item("Beef","https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-roast-beef-horizontal-1540505165.jpg","food"));
        lstItem.add(new Item("chicken_breast","https://www.wellplated.com/wp-content/uploads/2021/02/Baked-Chicken-Breasts-Recipe.jpg","food"));
        lstItem.add(new Item("Dessert","https://img.cuisineaz.com/2016/03/21/i47098-recettes-de-desserts-legers-et-printaniers.jpg","food"));

        //create an instance of ItemsRecyclerAdapter
        ListRecyclerAdapter myAdapter=new ListRecyclerAdapter(getActivity(),lstItem);

        //set adapter
        recyclerView.setAdapter(myAdapter);

        //set item animator to DefaultAnimator
        recyclerView.setItemAnimator(new DefaultItemAnimator());

        return rootView;

    }


}
