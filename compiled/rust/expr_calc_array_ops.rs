// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;

#[derive(Default)]
pub struct ExprCalcArrayOps {
    pub doubleArrayMid: Option<f64>,
    pub strArraySize: Option<i32>,
    pub intArrayMid: Option<i32>,
    pub doubleArrayLast: Option<f64>,
    pub doubleArrayMax: Option<f64>,
    pub intArray: Option<Vec<i32>>,
    pub doubleArrayMin: Option<f64>,
    pub strArrayMid: Option<String>,
    pub intArrayMin: Option<i32>,
    pub intArrayMax: Option<i32>,
    pub intArraySize: Option<i32>,
    pub doubleArraySize: Option<i32>,
    pub doubleArray: Option<Vec<f64>>,
    pub doubleArrayFirst: Option<f64>,
    pub intArrayFirst: Option<i32>,
    pub intArrayLast: Option<i32>,
    pub strArrayMin: Option<String>,
    pub strArray: Option<Vec<String>>,
    pub strArrayFirst: Option<String>,
    pub strArrayMax: Option<String>,
    pub strArrayLast: Option<String>,
}

impl KaitaiStruct for ExprCalcArrayOps {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
    }
}

impl ExprCalcArrayOps {
    fn doubleArrayMid(&mut self) -> f64 {
        if let Some(x) = self.doubleArrayMid {
            return x;
        }

        self.doubleArrayMid = self.double_array[1];
        return self.doubleArrayMid;
    }
    fn strArraySize(&mut self) -> i32 {
        if let Some(x) = self.strArraySize {
            return x;
        }

        self.strArraySize = self.str_array.len();
        return self.strArraySize;
    }
    fn intArrayMid(&mut self) -> i32 {
        if let Some(x) = self.intArrayMid {
            return x;
        }

        self.intArrayMid = self.int_array[1];
        return self.intArrayMid;
    }
    fn doubleArrayLast(&mut self) -> f64 {
        if let Some(x) = self.doubleArrayLast {
            return x;
        }

        self.doubleArrayLast = self.double_array.last();
        return self.doubleArrayLast;
    }
    fn doubleArrayMax(&mut self) -> f64 {
        if let Some(x) = self.doubleArrayMax {
            return x;
        }

        self.doubleArrayMax = self.double_array.iter().max();
        return self.doubleArrayMax;
    }
    fn intArray(&mut self) -> Vec<i32> {
        if let Some(x) = self.intArray {
            return x;
        }

        self.intArray = [10, 25, 50, 100, 200, 500, 1000];
        return self.intArray;
    }
    fn doubleArrayMin(&mut self) -> f64 {
        if let Some(x) = self.doubleArrayMin {
            return x;
        }

        self.doubleArrayMin = self.double_array.iter().min();
        return self.doubleArrayMin;
    }
    fn strArrayMid(&mut self) -> String {
        if let Some(x) = self.strArrayMid {
            return x;
        }

        self.strArrayMid = self.str_array[1];
        return self.strArrayMid;
    }
    fn intArrayMin(&mut self) -> i32 {
        if let Some(x) = self.intArrayMin {
            return x;
        }

        self.intArrayMin = self.int_array.iter().min();
        return self.intArrayMin;
    }
    fn intArrayMax(&mut self) -> i32 {
        if let Some(x) = self.intArrayMax {
            return x;
        }

        self.intArrayMax = self.int_array.iter().max();
        return self.intArrayMax;
    }
    fn intArraySize(&mut self) -> i32 {
        if let Some(x) = self.intArraySize {
            return x;
        }

        self.intArraySize = self.int_array.len();
        return self.intArraySize;
    }
    fn doubleArraySize(&mut self) -> i32 {
        if let Some(x) = self.doubleArraySize {
            return x;
        }

        self.doubleArraySize = self.double_array.len();
        return self.doubleArraySize;
    }
    fn doubleArray(&mut self) -> Vec<f64> {
        if let Some(x) = self.doubleArray {
            return x;
        }

        self.doubleArray = [10.0, 25.0, 50.0, 100.0, 3.14159];
        return self.doubleArray;
    }
    fn doubleArrayFirst(&mut self) -> f64 {
        if let Some(x) = self.doubleArrayFirst {
            return x;
        }

        self.doubleArrayFirst = self.double_array.first();
        return self.doubleArrayFirst;
    }
    fn intArrayFirst(&mut self) -> i32 {
        if let Some(x) = self.intArrayFirst {
            return x;
        }

        self.intArrayFirst = self.int_array.first();
        return self.intArrayFirst;
    }
    fn intArrayLast(&mut self) -> i32 {
        if let Some(x) = self.intArrayLast {
            return x;
        }

        self.intArrayLast = self.int_array.last();
        return self.intArrayLast;
    }
    fn strArrayMin(&mut self) -> String {
        if let Some(x) = self.strArrayMin {
            return x;
        }

        self.strArrayMin = self.str_array.iter().min();
        return self.strArrayMin;
    }
    fn strArray(&mut self) -> Vec<String> {
        if let Some(x) = self.strArray {
            return x;
        }

        self.strArray = ["un", "deux", "trois", "quatre"];
        return self.strArray;
    }
    fn strArrayFirst(&mut self) -> String {
        if let Some(x) = self.strArrayFirst {
            return x;
        }

        self.strArrayFirst = self.str_array.first();
        return self.strArrayFirst;
    }
    fn strArrayMax(&mut self) -> String {
        if let Some(x) = self.strArrayMax {
            return x;
        }

        self.strArrayMax = self.str_array.iter().max();
        return self.strArrayMax;
    }
    fn strArrayLast(&mut self) -> String {
        if let Some(x) = self.strArrayLast {
            return x;
        }

        self.strArrayLast = self.str_array.last();
        return self.strArrayLast;
    }
}
