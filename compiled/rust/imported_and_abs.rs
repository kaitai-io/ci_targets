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
use super::imported_root::ImportedRoot;

#[derive(Default, Debug, Clone)]
pub struct ImportedAndAbs {
    pub _root: SharedType<ImportedAndAbs>,
    pub _parent: SharedType<ImportedAndAbs>,
    pub _self: SharedType<Self>,
    one: RefCell<u8>,
    two: RefCell<OptRc<ImportedRoot>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ImportedAndAbs {
    type Root = ImportedAndAbs;
    type Parent = ImportedAndAbs;

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
        *self_rc.one.borrow_mut() = _io.read_u1()?.into();
        let t = Self::read_into::<_, ImportedRoot>(&*_io, None, None)?.into();
        *self_rc.two.borrow_mut() = t;
        Ok(())
    }
}
impl ImportedAndAbs {
}
impl ImportedAndAbs {
    pub fn one(&self) -> Ref<u8> {
        self.one.borrow()
    }
}
impl ImportedAndAbs {
    pub fn two(&self) -> Ref<OptRc<ImportedRoot>> {
        self.two.borrow()
    }
}
impl ImportedAndAbs {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
