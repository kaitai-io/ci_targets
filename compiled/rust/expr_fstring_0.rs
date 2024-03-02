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
pub struct ExprFstring0 {
    pub seqStr: String,
    pub seqInt: u8,
    pub empty: Option<String>,
    pub headAndInt: Option<String>,
    pub headAndIntLiteral: Option<String>,
    pub headAndStr: Option<String>,
    pub headAndStrLiteral: Option<String>,
    pub literal: Option<String>,
    pub literalWithEscapes: Option<String>,
}

impl KaitaiStruct for ExprFstring0 {
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
        self.seqStr = String::from_utf8_lossy(self.stream.read_bytes(5)?);
        self.seqInt = self.stream.read_u1()?;
    }
}

impl ExprFstring0 {
    fn empty(&mut self) -> String {
        if let Some(x) = self.empty {
            return x;
        }

        self.empty = "";
        return self.empty;
    }
    fn headAndInt(&mut self) -> String {
        if let Some(x) = self.headAndInt {
            return x;
        }

        self.headAndInt = "abc=" + self.seq_int.to_string();
        return self.headAndInt;
    }
    fn headAndIntLiteral(&mut self) -> String {
        if let Some(x) = self.headAndIntLiteral {
            return x;
        }

        self.headAndIntLiteral = "abc=" + 123.to_string();
        return self.headAndIntLiteral;
    }
    fn headAndStr(&mut self) -> String {
        if let Some(x) = self.headAndStr {
            return x;
        }

        self.headAndStr = "abc=" + self.seq_str;
        return self.headAndStr;
    }
    fn headAndStrLiteral(&mut self) -> String {
        if let Some(x) = self.headAndStrLiteral {
            return x;
        }

        self.headAndStrLiteral = "abc=" + "foo";
        return self.headAndStrLiteral;
    }
    fn literal(&mut self) -> String {
        if let Some(x) = self.literal {
            return x;
        }

        self.literal = "abc";
        return self.literal;
    }
    fn literalWithEscapes(&mut self) -> String {
        if let Some(x) = self.literalWithEscapes {
            return x;
        }

        self.literalWithEscapes = "abc\n\tt";
        return self.literalWithEscapes;
    }
}
