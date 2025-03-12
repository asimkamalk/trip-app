<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Review;
use App\Models\Package;

class AdminReviewController extends Controller
{
    public function index()
    {
        $reviews = Review::with(['user','package'])->get();
        return view('admin.review.index', compact('reviews'));
    }

    public function delete($id)
    {
        $obj = Review::where('id',$id)->first();
        $rating = $obj->rating;
        $package_id = $obj->package_id;
        $obj->delete();

        $package_data = Package::where('id',$package_id)->first();
        $updated_total_rating = $package_data->total_rating - 1;
        $updated_total_score = $package_data->total_score - $rating;
        $package_data->total_rating = $updated_total_rating;
        $package_data->total_score = $updated_total_score;
        $package_data->save();

        return redirect()->back()->with('success','Review is Deleted Successfully');
    }
}
