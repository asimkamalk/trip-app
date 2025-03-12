<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactItem;

class AdminContactItemController extends Controller
{
    public function index()
    {
        $contact_item = ContactItem::where('id',1)->first();
        return view('admin.contact_item.index',compact('contact_item'));
    }
    
    public function update(Request $request)
    {
        $obj = ContactItem::where('id',1)->first();
        $obj->map_code = $request->map_code;
        $obj->save();

        return redirect()->back()->with('success','Contact Item is Updated Successfully');
    }
}
