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
pub struct TermStrzUtf16V3 {
    pub _root: SharedType<TermStrzUtf16V3>,
    pub _parent: SharedType<TermStrzUtf16V3>,
    pub _self: SharedType<Self>,
    s1: RefCell<String>,
    term: RefCell<u16>,
    s2: RefCell<String>,
    s3: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TermStrzUtf16V3 {
    type Root = TermStrzUtf16V3;
    type Parent = TermStrzUtf16V3;

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
        *self_rc.s1.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, false, true)?.into(), "UTF-16LE")?;
        *self_rc.term.borrow_mut() = _io.read_u2le()?.into();
        *self_rc.s2.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, false, true)?.into(), "UTF-16LE")?;
        *self_rc.s3.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "UTF-16LE")?;
        Ok(())
    }
}
impl TermStrzUtf16V3 {
}
impl TermStrzUtf16V3 {
    pub fn s1(&self) -> Ref<String> {
        self.s1.borrow()
    }
}
impl TermStrzUtf16V3 {
    pub fn term(&self) -> Ref<u16> {
        self.term.borrow()
    }
}
impl TermStrzUtf16V3 {
    pub fn s2(&self) -> Ref<String> {
        self.s2.borrow()
    }
}
impl TermStrzUtf16V3 {
    pub fn s3(&self) -> Ref<String> {
        self.s3.borrow()
    }
}
impl TermStrzUtf16V3 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
