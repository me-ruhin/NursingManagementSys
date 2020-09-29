<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\ExpenseList;
use App\Model\Discount;
use App\Model\NurseSalary;
use App\Model\ExpenseCategory;



class ReportController extends Controller
{
    public function totalExpense(){


            $datas=ExpenseList::latest()->get();
            $total_expense=ExpenseList::sum('expense_amount');
            $discount_amount=Discount::sum('discount_amount');
            $salaries=NurseSalary::latest()->get();
            $total_salary=NurseSalary::sum('salary');
            $categories=ExpenseCategory::latest()->get();

          
            return view('backend.report.expense',compact('datas','total_expense','discount_amount','salaries','total_salary','categories'));

    }


    public function ExpenseReportByCategory(Request $request){

        // dd($request->expense_category);


        if($request->expense_category=="salaries"){

            $datas=ExpenseList::where('category_id',$request->expense_category)->whereBetween('date', [$request->start_date, $request->end_date])->latest()->get();
            $total_expense=ExpenseList::where('category_id',$request->expense_category)->whereBetween('date', [$request->start_date, $request->end_date])->sum('expense_amount');
            $discount_amount=0;
            $salaries=NurseSalary::whereBetween('date', [$request->start_date, $request->end_date])->latest()->get();
            $total_salary=NurseSalary::whereBetween('date', [$request->start_date, $request->end_date])->sum('salary');
            $categories=ExpenseCategory::latest()->get();
            return view('backend.report.expense',compact('datas','total_expense','discount_amount','salaries','total_salary','categories'));


            
        }

            if($request->expense_category=='allcategories'){

                $datas=ExpenseList::whereBetween('date', [$request->start_date, $request->end_date])->latest()->get();
                $total_expense=ExpenseList::whereBetween('date', [$request->start_date, $request->end_date]) ->sum('expense_amount');
                $discount_amount=Discount::whereBetween('date', [$request->start_date, $request->end_date])->sum('discount_amount');
                $salaries=NurseSalary::whereBetween('date', [$request->start_date, $request->end_date])->latest()->get();
                $total_salary=NurseSalary::whereBetween('date', [$request->start_date, $request->end_date])->sum('salary');
                $categories=ExpenseCategory::latest()->get();
    
              
                return view('backend.report.expense',compact('datas','total_expense','discount_amount','salaries','total_salary','categories'));


            }else if($request->expense_category='allcategories') {
               
            $datas=ExpenseList::where('category_id',$request->expense_category)->whereBetween('date', [$request->start_date, $request->end_date])->latest()->get();
            $total_expense=ExpenseList::where('category_id',$request->expense_category)->whereBetween('date', [$request->start_date, $request->end_date])->sum('expense_amount');
            $discount_amount=0;
            $salaries=[];
            $total_salary=0;
            $categories=ExpenseCategory::latest()->get();

          
            return view('backend.report.expense',compact('datas','total_expense','discount_amount','salaries','total_salary','categories'));

            } 
    }
}
