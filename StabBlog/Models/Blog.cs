﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class Blog:IPost
    {
        public int BlogId { get; set; }
        public string Title { get; set; }
        public Author PostAuthor { get; set; }
        public string Content { get; set; }
        public List<Category> Categories { get; set; }
        public List<Tag> Tags { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime? DatePosted { get; set; }
        public DateTime? DateLastModified { get; set; }
        public bool PostStatus { get; set; }
        public string ImagePath { get; set; }

        public Blog()
        {
            Categories = new List<Category>();
            Tags = new List<Tag>();
        }
    }
}
