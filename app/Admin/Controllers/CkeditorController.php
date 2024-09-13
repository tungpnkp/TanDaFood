<?php
  
  namespace App\Admin\Controllers;

  use App\Http\Controllers\Controller;
// use Illuminate\Support\Facades\Request;
use Illuminate\Http\Request;
  
class CkeditorController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('ckeditor');
    }
  
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function upload(Request $request)
    {
        if($request->hasFile('upload')) {
            $originName = $request->file('upload')->getClientOriginalName();
            $fileName = pathinfo($originName, PATHINFO_FILENAME);
            $extension = $request->file('upload')->getClientOriginalExtension();
            $name = hash('sha256', $fileName . strval(time()));
            $fileName = $name .'.'.$extension;
        
            $file_path_admin = config('filesystems.disks.admin.root') . '/';
            $request->file('upload')->move($file_path_admin . "/cms_content/",$fileName);
            // $request->file('upload')->move('documents/website/cms_content/', $fileName);
   
            $CKEditorFuncNum = $request->input('CKEditorFuncNum');
            $url = asset('documents/website/cms_content/'.$fileName); 
            $msg = 'Image uploaded successfully'; 
            $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";
               
            @header('Content-type: text/html; charset=utf-8'); 
            echo $response;
            exit;
        }
    }
}