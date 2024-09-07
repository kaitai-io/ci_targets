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
pub struct TypeTernary {
    pub _root: SharedType<TypeTernary>,
    pub _parent: SharedType<TypeTernary>,
    pub _self: SharedType<Self>,
    dif_wo_hack: RefCell<OptRc<TypeTernary_Dummy>>,
    dif_with_hack: RefCell<OptRc<TypeTernary_Dummy>>,
    _io: RefCell<BytesReader>,
    dif_wo_hack_raw: RefCell<Vec<u8>>,
    dif_with_hack_raw: RefCell<Vec<u8>>,
    dif_with_hack_raw_raw: RefCell<Vec<u8>>,
    f_dif: Cell<bool>,
    dif: RefCell<OptRc<TypeTernary_Dummy>>,
    f_dif_value: Cell<bool>,
    dif_value: RefCell<u8>,
    f_is_hack: Cell<bool>,
    is_hack: RefCell<bool>,
}
impl KStruct for TypeTernary {
    type Root = TypeTernary;
    type Parent = TypeTernary;

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
            let t = Self::read_into::<BytesReader, TypeTernary_Dummy>(&_t_dif_wo_hack_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            *self_rc.dif_wo_hack.borrow_mut() = t;
        }
        *self_rc.dif_with_hack_raw_raw.borrow_mut() = _io.read_bytes(1 as usize)?.into();
        *self_rc.dif_with_hack_raw.borrow_mut() = process_xor_one(&self_rc.dif_with_hack_raw_raw.borrow(), 3);
        let dif_with_hack_raw = self_rc.dif_with_hack_raw.borrow();
        let _t_dif_with_hack_raw_io = BytesReader::from(dif_with_hack_raw.clone());
        let t = Self::read_into::<BytesReader, TypeTernary_Dummy>(&_t_dif_with_hack_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.dif_with_hack.borrow_mut() = t;
        Ok(())
    }
}
impl TypeTernary {
    pub fn dif(
        &self
    ) -> KResult<Ref<OptRc<TypeTernary_Dummy>>> {
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
    pub fn dif_value(
        &self
    ) -> KResult<Ref<u8>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_dif_value.get() {
            return Ok(self.dif_value.borrow());
        }
        self.f_dif_value.set(true);
        *self.dif_value.borrow_mut() = (*self.dif()?.value()) as u8;
        Ok(self.dif_value.borrow())
    }
    pub fn is_hack(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_hack.get() {
            return Ok(self.is_hack.borrow());
        }
        self.f_is_hack.set(true);
        *self.is_hack.borrow_mut() = (true) as bool;
        Ok(self.is_hack.borrow())
    }
}
impl TypeTernary {
    pub fn dif_wo_hack(&self) -> Ref<OptRc<TypeTernary_Dummy>> {
        self.dif_wo_hack.borrow()
    }
}
impl TypeTernary {
    pub fn dif_with_hack(&self) -> Ref<OptRc<TypeTernary_Dummy>> {
        self.dif_with_hack.borrow()
    }
}
impl TypeTernary {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
impl TypeTernary {
    pub fn dif_wo_hack_raw(&self) -> Ref<Vec<u8>> {
        self.dif_wo_hack_raw.borrow()
    }
}
impl TypeTernary {
    pub fn dif_with_hack_raw(&self) -> Ref<Vec<u8>> {
        self.dif_with_hack_raw.borrow()
    }
}
impl TypeTernary {
    pub fn dif_with_hack_raw_raw(&self) -> Ref<Vec<u8>> {
        self.dif_with_hack_raw_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct TypeTernary_Dummy {
    pub _root: SharedType<TypeTernary>,
    pub _parent: SharedType<TypeTernary>,
    pub _self: SharedType<Self>,
    value: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for TypeTernary_Dummy {
    type Root = TypeTernary;
    type Parent = TypeTernary;

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
        *self_rc.value.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl TypeTernary_Dummy {
}
impl TypeTernary_Dummy {
    pub fn value(&self) -> Ref<u8> {
        self.value.borrow()
    }
}
impl TypeTernary_Dummy {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
