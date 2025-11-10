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
use super::integers::Integers;

#[derive(Default, Debug, Clone)]
pub struct NameClashImportVsInst {
    pub _root: SharedType<NameClashImportVsInst>,
    pub _parent: SharedType<NameClashImportVsInst>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_integers: Cell<bool>,
    integers: RefCell<OptRc<Integers>>,
    f_std: Cell<bool>,
    std: RefCell<i32>,
}
impl KStruct for NameClashImportVsInst {
    type Root = NameClashImportVsInst;
    type Parent = NameClashImportVsInst;

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
        Ok(())
    }
}
impl NameClashImportVsInst {
    pub fn integers(
        &self
    ) -> KResult<Ref<'_, OptRc<Integers>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_integers.get() {
            return Ok(self.integers.borrow());
        }
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        let t = Self::read_into::<_, Integers>(&*_io, None, None)?.into();
        *self.integers.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.integers.borrow())
    }
    pub fn std(
        &self
    ) -> KResult<Ref<'_, i32>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_std.get() {
            return Ok(self.std.borrow());
        }
        self.f_std.set(true);
        *self.std.borrow_mut() = ((1 + 2)) as i32;
        Ok(self.std.borrow())
    }
}
impl NameClashImportVsInst {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
