﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Speech.Models;
using Microsoft.EntityFrameworkCore;

namespace Speech.Controllers
{
    public class ReviewController : Controller
    {
        private SpeechDbContext db = new SpeechDbContext();
        public IActionResult Index()
        {
            return View();
        }
    }
}
