// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;


/*
 * A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
 * consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
 * "least significant group first", i.e. in "little-endian" manner.
 * 
 * This particular encoding is specified and used in:
 * 
 * * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
 *   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
 * * Google Protocol Buffers, where it's called "Base 128 Varints".
 *   <https://protobuf.dev/programming-guides/encoding/#varints>
 * * Apache Lucene, where it's called "VInt"
 *   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
 * * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
 *   top of it for signed ints
 *   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
 * 
 * More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
 * 
 * This particular implementation supports serialized values to up 8 bytes long.
 */
#[derive(Default)]
pub struct VlqBase128Le {
    pub groups: Vec<Box<VlqBase128Le__Group>>,
    pub len: Option<i32>,
    pub value: Option<u64>,
    pub signBit: Option<u64>,
    pub valueSigned: Option<i64>,
}

impl KaitaiStruct for VlqBase128Le {
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
        self.groups = vec!();
        while {
            let tmpa = Box::new(VlqBase128Le__Group::new(self.stream, self, _root)?);
            self.groups.append(tmpa);
            !(!(tmpa.has_next))
        } { }
    }
}

impl VlqBase128Le {
    fn len(&mut self) -> i32 {
        if let Some(x) = self.len {
            return x;
        }

        self.len = self.groups.len();
        return self.len;
    }

    /*
     * Resulting unsigned value as normal integer
     */
    fn value(&mut self) -> u64 {
        if let Some(x) = self.value {
            return x;
        }

        self.value = (((((((self.groups[0].value + if self.len >= 2 { (self.groups[1].value << 7) } else { 0}) + if self.len >= 3 { (self.groups[2].value << 14) } else { 0}) + if self.len >= 4 { (self.groups[3].value << 21) } else { 0}) + if self.len >= 5 { (self.groups[4].value << 28) } else { 0}) + if self.len >= 6 { (self.groups[5].value << 35) } else { 0}) + if self.len >= 7 { (self.groups[6].value << 42) } else { 0}) + if self.len >= 8 { (self.groups[7].value << 49) } else { 0});
        return self.value;
    }
    fn signBit(&mut self) -> u64 {
        if let Some(x) = self.signBit {
            return x;
        }

        self.signBit = (1 << ((7 * self.len) - 1));
        return self.signBit;
    }
    fn valueSigned(&mut self) -> i64 {
        if let Some(x) = self.valueSigned {
            return x;
        }

        self.valueSigned = ((self.value ^ self.sign_bit) - self.sign_bit);
        return self.valueSigned;
    }
}

/*
 * One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
 */
#[derive(Default)]
pub struct VlqBase128Le__Group {
    pub hasNext: bool,
    pub value: u64,
}

impl KaitaiStruct for VlqBase128Le__Group {
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
        self.hasNext = self.stream.read_bits_int(1)? != 0;
        self.value = self.stream.read_bits_int(7)?;
    }
}

impl VlqBase128Le__Group {

    /*
     * If true, then we have more bytes to read
     */

    /*
     * The 7-bit (base128) numeric value chunk of this group
     */
}
