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
pub struct EnumDeepLiterals {
    pub _root: SharedType<EnumDeepLiterals>,
    pub _parent: SharedType<EnumDeepLiterals>,
    pub _self: SharedType<Self>,
    pet_1: RefCell<EnumDeepLiterals_Container1_Animal>,
    pet_2: RefCell<EnumDeepLiterals_Container1_Container2_Animal>,
    _io: RefCell<BytesReader>,
    f_is_pet_1_ok: Cell<bool>,
    is_pet_1_ok: RefCell<bool>,
    f_is_pet_2_ok: Cell<bool>,
    is_pet_2_ok: RefCell<bool>,
}
impl KStruct for EnumDeepLiterals {
    type Root = EnumDeepLiterals;
    type Parent = EnumDeepLiterals;

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
        *self_rc.pet_1.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        *self_rc.pet_2.borrow_mut() = (_io.read_u4le()? as i64).try_into()?;
        Ok(())
    }
}
impl EnumDeepLiterals {
    pub fn is_pet_1_ok(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_pet_1_ok.get() {
            return Ok(self.is_pet_1_ok.borrow());
        }
        self.f_is_pet_1_ok.set(true);
        *self.is_pet_1_ok.borrow_mut() = (*self.pet_1() == EnumDeepLiterals_Container1_Animal::Cat) as bool;
        Ok(self.is_pet_1_ok.borrow())
    }
    pub fn is_pet_2_ok(
        &self
    ) -> KResult<Ref<bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_pet_2_ok.get() {
            return Ok(self.is_pet_2_ok.borrow());
        }
        self.f_is_pet_2_ok.set(true);
        *self.is_pet_2_ok.borrow_mut() = (*self.pet_2() == EnumDeepLiterals_Container1_Container2_Animal::Hare) as bool;
        Ok(self.is_pet_2_ok.borrow())
    }
}
impl EnumDeepLiterals {
    pub fn pet_1(&self) -> Ref<EnumDeepLiterals_Container1_Animal> {
        self.pet_1.borrow()
    }
}
impl EnumDeepLiterals {
    pub fn pet_2(&self) -> Ref<EnumDeepLiterals_Container1_Container2_Animal> {
        self.pet_2.borrow()
    }
}
impl EnumDeepLiterals {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct EnumDeepLiterals_Container1 {
    pub _root: SharedType<EnumDeepLiterals>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumDeepLiterals_Container1 {
    type Root = EnumDeepLiterals;
    type Parent = KStructUnit;

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
impl EnumDeepLiterals_Container1 {
}
impl EnumDeepLiterals_Container1 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumDeepLiterals_Container1_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for EnumDeepLiterals_Container1_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumDeepLiterals_Container1_Animal> {
        match flag {
            4 => Ok(EnumDeepLiterals_Container1_Animal::Dog),
            7 => Ok(EnumDeepLiterals_Container1_Animal::Cat),
            12 => Ok(EnumDeepLiterals_Container1_Animal::Chicken),
            _ => Ok(EnumDeepLiterals_Container1_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumDeepLiterals_Container1_Animal> for i64 {
    fn from(v: &EnumDeepLiterals_Container1_Animal) -> Self {
        match *v {
            EnumDeepLiterals_Container1_Animal::Dog => 4,
            EnumDeepLiterals_Container1_Animal::Cat => 7,
            EnumDeepLiterals_Container1_Animal::Chicken => 12,
            EnumDeepLiterals_Container1_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumDeepLiterals_Container1_Animal {
    fn default() -> Self { EnumDeepLiterals_Container1_Animal::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct EnumDeepLiterals_Container1_Container2 {
    pub _root: SharedType<EnumDeepLiterals>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for EnumDeepLiterals_Container1_Container2 {
    type Root = EnumDeepLiterals;
    type Parent = KStructUnit;

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
impl EnumDeepLiterals_Container1_Container2 {
}
impl EnumDeepLiterals_Container1_Container2 {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum EnumDeepLiterals_Container1_Container2_Animal {
    Canary,
    Turtle,
    Hare,
    Unknown(i64),
}

impl TryFrom<i64> for EnumDeepLiterals_Container1_Container2_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<EnumDeepLiterals_Container1_Container2_Animal> {
        match flag {
            4 => Ok(EnumDeepLiterals_Container1_Container2_Animal::Canary),
            7 => Ok(EnumDeepLiterals_Container1_Container2_Animal::Turtle),
            12 => Ok(EnumDeepLiterals_Container1_Container2_Animal::Hare),
            _ => Ok(EnumDeepLiterals_Container1_Container2_Animal::Unknown(flag)),
        }
    }
}

impl From<&EnumDeepLiterals_Container1_Container2_Animal> for i64 {
    fn from(v: &EnumDeepLiterals_Container1_Container2_Animal) -> Self {
        match *v {
            EnumDeepLiterals_Container1_Container2_Animal::Canary => 4,
            EnumDeepLiterals_Container1_Container2_Animal::Turtle => 7,
            EnumDeepLiterals_Container1_Container2_Animal::Hare => 12,
            EnumDeepLiterals_Container1_Container2_Animal::Unknown(v) => v
        }
    }
}

impl Default for EnumDeepLiterals_Container1_Container2_Animal {
    fn default() -> Self { EnumDeepLiterals_Container1_Container2_Animal::Unknown(0) }
}

