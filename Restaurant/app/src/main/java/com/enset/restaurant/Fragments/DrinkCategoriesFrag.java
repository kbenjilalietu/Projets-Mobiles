package com.example.rabiy.styleomega14.Fragments;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
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

public class DrinkCategoriesFrag extends Fragment {

    List<Item> lstItem;

    public DrinkCategoriesFrag() {
        // Required empty public constructor
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        View rootView=inflater.inflate(R.layout.fragment_categories, container, false);

        //get a reference to recycler view
        RecyclerView recyclerView=rootView.findViewById(R.id.recycler_categories);

        //set layout manager
        recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));

        //the data for the recycler view
        lstItem=new ArrayList<>();
        lstItem.add(new Item("Jus de Fruits","https://res.cloudinary.com/hv9ssmzrz/image/fetch/c_fill,f_auto,h_600,q_auto,w_800/https://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/tag_photos/original/11345/tag-jus-de-fruits-2253430_1920.jpg","drinks"));
        lstItem.add(new Item("cafe","https://file1.topsante.com/var/topsante/storage/images/1/3/1/5/1315592/cafe.jpg?alias=exact1024x768_p","drinks"));

        //create an instance of ItemsRecyclerAdapter
        ListRecyclerAdapter myAdapter=new ListRecyclerAdapter(getActivity(),lstItem);

        //set adapter
        recyclerView.setAdapter(myAdapter);

        //set item animator to DefaultAnimator
        recyclerView.setItemAnimator(new DefaultItemAnimator());

        return rootView;
    }

}
