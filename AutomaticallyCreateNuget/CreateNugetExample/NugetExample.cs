﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CreateNugetExample
{
    public class ExampleClass
    {

        public string ReturnStringAsExample()
        {
            return OtherNeededAssembly.HelloWorld.SayHello();
        }

    }
}
