<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\AboutItem;

class AdminAboutItemController extends Controller
{
    public function index()
    {
        $about_item = AboutItem::where('id',1)->first();
        return view('admin.about_item.index',compact('about_item'));
    }
    
    public function update(Request $request)
    {
        $obj = AboutItem::where('id',1)->first();
        $obj->feature_status = $request->feature_status;
        $obj->save();

        return redirect()->back()->with('success','About Item is Updated Successfully');
    }
}
