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
pub struct RepeatUntilCalcArrayType {
    pub records: Vec<Box<RepeatUntilCalcArrayType__Record>>,
    pub _raw_records: Vec<Vec<u8>>,
    pub recsAccessor: Option<Vec<Box<RepeatUntilCalcArrayType__Record>>>,
    pub firstRec: Option<Box<RepeatUntilCalcArrayType__Record>>,
}

impl KaitaiStruct for RepeatUntilCalcArrayType {
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
        self._raw_records = vec!();
        self.records = vec!();
        while {
            let tmpb = self.stream.read_bytes(5)?;
            self._raw_records.append(tmpb);
            let mut io = Cursor::new(tmpb);
            let tmpa = Box::new(RepeatUntilCalcArrayType__Record::new(self.stream, self, _root)?);
            self.records.append(tmpa);
            !(tmpa.marker == 170)
        } { }
    }
}

impl RepeatUntilCalcArrayType {
    fn recsAccessor(&mut self) -> Vec<Box<RepeatUntilCalcArrayType__Record>> {
        if let Some(x) = self.recsAccessor {
            return x;
        }

        self.recsAccessor = self.records;
        return self.recsAccessor;
    }
    fn firstRec(&mut self) -> Box<RepeatUntilCalcArrayType__Record> {
        if let Some(x) = self.firstRec {
            return x;
        }

        self.firstRec = self.recs_accessor.first();
        return self.firstRec;
    }
}
#[derive(Default)]
pub struct RepeatUntilCalcArrayType__Record {
    pub marker: u8,
    pub body: u32,
}

impl KaitaiStruct for RepeatUntilCalcArrayType__Record {
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
        self.marker = self.stream.read_u1()?;
        self.body = self.stream.read_u4le()?;
    }
}

impl RepeatUntilCalcArrayType__Record {
}
