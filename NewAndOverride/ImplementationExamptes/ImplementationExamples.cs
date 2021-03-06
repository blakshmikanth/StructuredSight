﻿using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Dynamic;

namespace ImplementationExamptes
{
    [TestClass]
    public class ImplementationExamples
    {

        /*Calling hello world from class */
        [TestMethod]
        public void ParentClassSayingHelloWorld()
        {
            var parentClass = new NewAndOverrideClasses.ParentClass();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(parentClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassSayingHelloWorld()
        {
            var childClass = new NewAndOverrideClasses.ChildClassOverride();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassWithNewMethodSayingHelloWorld()
        {
            var childClass = new NewAndOverrideClasses.ChildClassNew();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }


        /*Calling Hello World From Helper Method*/
        [TestMethod]
        public void ParentClassCallingHelperMethod()
        {
            var parentClass = new NewAndOverrideClasses.ParentClass();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(parentClass.CallMethodToSayHelloWorld());
        }

        [TestMethod]
        public void ChildClassCallingHelperMethod()
        {
            var childClass = new NewAndOverrideClasses.ChildClassOverride();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.CallMethodToSayHelloWorld());
        }

        [TestMethod]
        public void ChildClassWithNewMethodCallingHelperMethod()
        {
            var childClass = new NewAndOverrideClasses.ChildClassNew();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.CallMethodToSayHelloWorld());
        }



        /*Explicit Parent Class Instantiation*/
        [TestMethod]
        public void ParentClassExplicitParentClass()
        {
            NewAndOverrideClasses.ParentClass parentClass = new NewAndOverrideClasses.ParentClass();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(parentClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassExplicitParentClassOverridden()
        {
            NewAndOverrideClasses.ParentClass childClass = new NewAndOverrideClasses.ChildClassOverride();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassExplicitParentClassNewMethod()
        {
            NewAndOverrideClasses.ParentClass childClass = new NewAndOverrideClasses.ChildClassNew();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }
        



        /*Parent Interface*/
        [TestMethod]
        public void ParentClassExplicitInterface()
        {
            NewAndOverrideClasses.IHelloWorld parentClass = new NewAndOverrideClasses.ParentClass();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(parentClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassExplicitInterfaceOverridden()
        {
            NewAndOverrideClasses.IHelloWorld childClass = new NewAndOverrideClasses.ChildClassOverride();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }

        [TestMethod]
        public void ChildClassExplicitInterfaceNewMethod()
        {
            NewAndOverrideClasses.IHelloWorld childClass = new NewAndOverrideClasses.ChildClassNew();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
        }






        /*Casting*/
        [TestMethod]
        public void CastingToParentClass()
        {
            NewAndOverrideClasses.ParentClass childClass = new NewAndOverrideClasses.ChildClassNew();

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(((NewAndOverrideClasses.ChildClassNew)childClass).SayHelloWorld());
        }


        [TestMethod]
        public void DeclareAndChangeVariableType()
        {
            NewAndOverrideClasses.ChildClassNew childClass = new NewAndOverrideClasses.ChildClassNew();
            NewAndOverrideClasses.ParentClass newChildClass = childClass;

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine("");
            
            System.Diagnostics.Debug.WriteLine("Child variable");
            System.Diagnostics.Debug.WriteLine(childClass.SayHelloWorld());
            System.Diagnostics.Debug.WriteLine("");

            System.Diagnostics.Debug.WriteLine("Parent variable");
            System.Diagnostics.Debug.WriteLine(newChildClass.SayHelloWorld());
        }

        [TestMethod]
        public void DeclareAndUseImplicitTypeDeclaration()
        {
            NewAndOverrideClasses.ParentClass parentType = new NewAndOverrideClasses.ChildClassNew();
            var childType = parentType;

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine("");

            System.Diagnostics.Debug.WriteLine("Parent variable");
            System.Diagnostics.Debug.WriteLine(parentType.SayHelloWorld());
            System.Diagnostics.Debug.WriteLine("");

            System.Diagnostics.Debug.WriteLine("Child variable");
            System.Diagnostics.Debug.WriteLine(childType.SayHelloWorld());

        }



        /*Using Dynamic*/
        [TestMethod]
        public void UsingDynamic()
        {
            NewAndOverrideClasses.ParentClass parentType = new NewAndOverrideClasses.ChildClassNew();
            dynamic childType = parentType;

            System.Diagnostics.Debug.WriteLine(System.Reflection.MethodBase.GetCurrentMethod().Name);
            System.Diagnostics.Debug.WriteLine(childType.SayHelloWorld() as string);
        }

    }
}
