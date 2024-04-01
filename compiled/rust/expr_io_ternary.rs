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
pub struct ExprIoTernary {
    pub flag: u8,
    pub obj1: Box<ExprIoTernary__One>,
    pub obj2: Box<ExprIoTernary__Two>,
    pub _raw_obj1: Vec<u8>,
    pub _raw_obj2: Vec<u8>,
    pub oneOrTwoIo: Option<Option<Box<KaitaiStream>>>,
    pub oneOrTwoIoSize1: Option<i32>,
    pub oneOrTwoIoSize2: Option<i32>,
    pub oneOrTwoIoSizeAdd3: Option<i32>,
    pub oneOrTwoObj: Option<Option<Box<KaitaiStruct>>>,
}

impl KaitaiStruct for ExprIoTernary {
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
        self.flag = self.stream.read_u1()?;
        self._raw_obj1 = self.stream.read_bytes(4)?;
        let mut io = Cursor::new(self._raw_obj1);
        self.obj1 = Box::new(ExprIoTernary__One::new(self.stream, self, _root)?);
        self._raw_obj2 = self.stream.read_bytes(8)?;
        let mut io = Cursor::new(self._raw_obj2);
        self.obj2 = Box::new(ExprIoTernary__Two::new(self.stream, self, _root)?);
    }
}

impl ExprIoTernary {
    fn oneOrTwoIo(&mut self) -> Option<Box<KaitaiStream>> {
        if let Some(x) = self.oneOrTwoIo {
            return x;
        }

        self.oneOrTwoIo = if self.flag == 64 { self.obj1 } else { self.obj2}._io;
        return self.oneOrTwoIo;
    }
    fn oneOrTwoIoSize1(&mut self) -> i32 {
        if let Some(x) = self.oneOrTwoIoSize1 {
            return x;
        }

        self.oneOrTwoIoSize1 = if self.flag == 64 { self.obj1 } else { self.obj2}._io.size;
        return self.oneOrTwoIoSize1;
    }
    fn oneOrTwoIoSize2(&mut self) -> i32 {
        if let Some(x) = self.oneOrTwoIoSize2 {
            return x;
        }

        self.oneOrTwoIoSize2 = self.one_or_two_io.size;
        return self.oneOrTwoIoSize2;
    }
    fn oneOrTwoIoSizeAdd3(&mut self) -> i32 {
        if let Some(x) = self.oneOrTwoIoSizeAdd3 {
            return x;
        }

        self.oneOrTwoIoSizeAdd3 = if self.flag == 64 { self.obj1 } else { self.obj2}._io.size + 3;
        return self.oneOrTwoIoSizeAdd3;
    }
    fn oneOrTwoObj(&mut self) -> Option<Box<KaitaiStruct>> {
        if let Some(x) = self.oneOrTwoObj {
            return x;
        }

        self.oneOrTwoObj = if self.flag == 64 { self.obj1 } else { self.obj2};
        return self.oneOrTwoObj;
    }
}
#[derive(Default)]
pub struct ExprIoTernary__One {
    pub one: u8,
}

impl KaitaiStruct for ExprIoTernary__One {
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
        self.one = self.stream.read_u1()?;
    }
}

impl ExprIoTernary__One {
}
#[derive(Default)]
pub struct ExprIoTernary__Two {
    pub two: u8,
}

impl KaitaiStruct for ExprIoTernary__Two {
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
        self.two = self.stream.read_u1()?;
    }
}

impl ExprIoTernary__Two {
}
