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
use super::hello_world::HelloWorld;

#[derive(Default, Debug, Clone)]
pub struct TypeTernaryOpaque {
    pub _root: SharedType<TypeTernaryOpaque>,
    pub _parent: SharedType<TypeTernaryOpaque>,
    pub _self: SharedType<Self>,
    dif_wo_hack: RefCell<OptRc<HelloWorld>>,
    dif_with_hack: RefCell<OptRc<HelloWorld>>,
    _io: RefCell<BytesReader>,
    dif_wo_hack_raw: RefCell<Vec<u8>>,
    dif_with_hack_raw: RefCell<Vec<u8>>,
    dif_with_hack_raw_raw: RefCell<Vec<u8>>,
    f_dif: Cell<bool>,
    dif: RefCell<OptRc<HelloWorld>>,
    f_is_hack: Cell<bool>,
    is_hack: RefCell<bool>,
}
impl KStruct for TypeTernaryOpaque {
    type Root = TypeTernaryOpaque;
    type Parent = TypeTernaryOpaque;

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
        if !(*self_rc.is_hack()?) {
            *self_rc.dif_wo_hack_raw.borrow_mut() = _io.read_bytes(1 as usize)?.into();
            let dif_wo_hack_raw = self_rc.dif_wo_hack_raw.borrow();
            let _t_dif_wo_hack_raw_io = BytesReader::from(dif_wo_hack_raw.clone());
            let t = Self::read_into::<BytesReader, HelloWorld>(&_t_dif_wo_hack_raw_io, None, None)?.into();
            *self_rc.dif_wo_hack.borrow_mut() = t;
        }
        if *self_rc.is_hack()? {
            *self_rc.dif_with_hack_raw_raw.borrow_mut() = _io.read_bytes(1 as usize)?.into();
            *self_rc.dif_with_hack_raw.borrow_mut() = process_xor_one(&self_rc.dif_with_hack_raw_raw.borrow(), 3);
            let dif_with_hack_raw = self_rc.dif_with_hack_raw.borrow();
            let _t_dif_with_hack_raw_io = BytesReader::from(dif_with_hack_raw.clone());
            let t = Self::read_into::<BytesReader, HelloWorld>(&_t_dif_with_hack_raw_io, None, None)?.into();
            *self_rc.dif_with_hack.borrow_mut() = t;
        }
        Ok(())
    }
}
impl TypeTernaryOpaque {
    pub fn dif(
        &self
    ) -> KResult<Ref<'_, OptRc<HelloWorld>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_dif.get() {
            return Ok(self.dif.borrow());
        }
        *self.dif.borrow_mut() = if !(*self.is_hack()?) { self.dif_wo_hack().clone() } else { self.dif_with_hack().clone() }.clone();
        Ok(self.dif.borrow())
    }
    pub fn is_hack(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_hack.get() {
            return Ok(self.is_hack.borrow());
        }
        self.f_is_hack.set(true);
        *self.is_hack.borrow_mut() = (false) as bool;
        Ok(self.is_hack.borrow())
    }
}
impl TypeTernaryOpaque {
    pub fn dif_wo_hack(&self) -> Ref<'_, OptRc<HelloWorld>> {
        self.dif_wo_hack.borrow()
    }
}
impl TypeTernaryOpaque {
    pub fn dif_with_hack(&self) -> Ref<'_, OptRc<HelloWorld>> {
        self.dif_with_hack.borrow()
    }
}
impl TypeTernaryOpaque {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl TypeTernaryOpaque {
    pub fn dif_wo_hack_raw(&self) -> Ref<'_, Vec<u8>> {
        self.dif_wo_hack_raw.borrow()
    }
}
impl TypeTernaryOpaque {
    pub fn dif_with_hack_raw(&self) -> Ref<'_, Vec<u8>> {
        self.dif_with_hack_raw.borrow()
    }
}
impl TypeTernaryOpaque {
    pub fn dif_with_hack_raw_raw(&self) -> Ref<'_, Vec<u8>> {
        self.dif_with_hack_raw_raw.borrow()
    }
}
