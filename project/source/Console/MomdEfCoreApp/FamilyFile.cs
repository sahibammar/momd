using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MomdEfCoreApp
{
    class FamilyFile
    {
        public int FamilyFileId { get; set; }         //#A

        public string FullName { get; set; }
        public string BirthYear { get; set; }
        public DateTime EntryDate { get; set; }
        public DateTime RegisterationDate { get; set; }
        public int FamilyMemberId { get; set; }       //#B

        public FamilyMember FamilyMember { get; set; }      //#C
    }
}
