﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;

namespace StabBlog.Models.AppModels
{
    public class ExhibitPage
    {
        public int ExhibitId { get; set; }
        [Required]
        public string Title { get; set; }
        [Required]
        [UIHint("tinymce_full"), AllowHtml]
        public string Content { get; set; }

        [Required]
        public string ImagePath { get; set; }
        
    }
}