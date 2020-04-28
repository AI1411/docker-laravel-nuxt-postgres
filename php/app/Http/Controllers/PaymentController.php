<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Stripe\Stripe;

class PaymentController extends Controller
{
    public function payment(Request $request)
    {
       Stripe::setApiKey(env('STRIPE_SECRET'));


    }
}
