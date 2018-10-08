<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Meal;

class MealsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->input('filterBy')){
            $allMeals = Meal::where('type', $request->input('filterBy'))->inRandomOrder()->get();
        }
        else{
            $allMeals = Meal::inRandomOrder()->get();
        }
        $args = [
            'meals' => $allMeals,
            'filterBy' => $request->input('filterBy')
        ];
        return view('meals.index', $args);
    }
    public function getSingleMeal($id){
        return response()->json($id);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $Meal = Meal::create($request->except(['img']));
        if ($request->hasFile('img')) {
            $img = $request->file('img');
            $path = $request->img->store('images');
            $Meal->img = $path;
            $Meal->save();
        }
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}