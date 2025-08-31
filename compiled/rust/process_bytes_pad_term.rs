// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct ProcessBytesPadTerm {
    pub _root: SharedType<ProcessBytesPadTerm>,
    pub _parent: SharedType<ProcessBytesPadTerm>,
    pub _self: SharedType<Self>,
    str_pad: RefCell<Vec<u8>>,
    str_term: RefCell<Vec<u8>>,
    str_term_and_pad: RefCell<Vec<u8>>,
    str_term_include: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
    str_pad_raw: RefCell<Vec<u8>>,
    str_term_raw: RefCell<Vec<u8>>,
    str_term_and_pad_raw: RefCell<Vec<u8>>,
    str_term_include_raw: RefCell<Vec<u8>>,
}
impl KStruct for ProcessBytesPadTerm {
    type Root = ProcessBytesPadTerm;
    type Parent = ProcessBytesPadTerm;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.str_pad_raw.borrow_mut() = bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 64).into();
        *self_rc.str_pad.borrow_mut() = process_xor_one(&self_rc.str_pad_raw.borrow(), 21);
        *self_rc.str_term_raw.borrow_mut() = bytes_terminate(&_io.read_bytes(20 as usize)?.into(), 64, false).into();
        *self_rc.str_term.borrow_mut() = process_xor_one(&self_rc.str_term_raw.borrow(), 21);
        *self_rc.str_term_and_pad_raw.borrow_mut() = bytes_terminate(&bytes_strip_right(&_io.read_bytes(20 as usize)?.into(), 43).into(), 64, false).into();
        *self_rc.str_term_and_pad.borrow_mut() = process_xor_one(&self_rc.str_term_and_pad_raw.borrow(), 21);
        *self_rc.str_term_include_raw.borrow_mut() = bytes_terminate(&_io.read_bytes(20 as usize)?.into(), 64, true).into();
        *self_rc.str_term_include.borrow_mut() = process_xor_one(&self_rc.str_term_include_raw.borrow(), 21);
        Ok(())
    }
}
impl ProcessBytesPadTerm {
}
impl ProcessBytesPadTerm {
    pub fn str_pad(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term(&self) -> Ref<'_, Vec<u8>> {
        self.str_term.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term_and_pad(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term_include(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_pad_raw.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_raw.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term_and_pad_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_and_pad_raw.borrow()
    }
}
impl ProcessBytesPadTerm {
    pub fn str_term_include_raw(&self) -> Ref<'_, Vec<u8>> {
        self.str_term_include_raw.borrow()
    }
}
