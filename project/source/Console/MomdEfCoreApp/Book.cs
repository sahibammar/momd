using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MomdEfCoreApp
{
    public class Book
    {
        public int BookId { get; set; }         //#A
        
        public string Title { get; set; }
        public string Description { get; set; }
        public DateTime PublishedOn { get; set; }
        public int AuthorId { get; set; }       //#B

        public Author Author { get; set; }      //#C
    }
}
