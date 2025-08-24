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
pub struct ParamsEnum {
    pub _root: SharedType<ParamsEnum>,
    pub _parent: SharedType<ParamsEnum>,
    pub _self: SharedType<Self>,
    one: RefCell<ParamsEnum_Animal>,
    invoke_with_param: RefCell<OptRc<ParamsEnum_WithParam>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsEnum {
    type Root = ParamsEnum;
    type Parent = ParamsEnum;

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
        *self_rc.one.borrow_mut() = (_io.read_u1()? as i64).try_into()?;
        let f = |t : &mut ParamsEnum_WithParam| Ok(t.set_params(&*self_rc.one()));
        let t = Self::read_into_with_init::<_, ParamsEnum_WithParam>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.invoke_with_param.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsEnum {
}
impl ParamsEnum {
    pub fn one(&self) -> Ref<'_, ParamsEnum_Animal> {
        self.one.borrow()
    }
}
impl ParamsEnum {
    pub fn invoke_with_param(&self) -> Ref<'_, OptRc<ParamsEnum_WithParam>> {
        self.invoke_with_param.borrow()
    }
}
impl ParamsEnum {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
#[derive(Debug, PartialEq, Clone)]
pub enum ParamsEnum_Animal {
    Dog,
    Cat,
    Chicken,
    Unknown(i64),
}

impl TryFrom<i64> for ParamsEnum_Animal {
    type Error = KError;
    fn try_from(flag: i64) -> KResult<ParamsEnum_Animal> {
        match flag {
            4 => Ok(ParamsEnum_Animal::Dog),
            7 => Ok(ParamsEnum_Animal::Cat),
            12 => Ok(ParamsEnum_Animal::Chicken),
            _ => Ok(ParamsEnum_Animal::Unknown(flag)),
        }
    }
}

impl From<&ParamsEnum_Animal> for i64 {
    fn from(v: &ParamsEnum_Animal) -> Self {
        match *v {
            ParamsEnum_Animal::Dog => 4,
            ParamsEnum_Animal::Cat => 7,
            ParamsEnum_Animal::Chicken => 12,
            ParamsEnum_Animal::Unknown(v) => v
        }
    }
}

impl Default for ParamsEnum_Animal {
    fn default() -> Self { ParamsEnum_Animal::Unknown(0) }
}


#[derive(Default, Debug, Clone)]
pub struct ParamsEnum_WithParam {
    pub _root: SharedType<ParamsEnum>,
    pub _parent: SharedType<ParamsEnum>,
    pub _self: SharedType<Self>,
    enumerated_one: RefCell<ParamsEnum_Animal>,
    _io: RefCell<BytesReader>,
    f_is_cat: Cell<bool>,
    is_cat: RefCell<bool>,
}
impl KStruct for ParamsEnum_WithParam {
    type Root = ParamsEnum;
    type Parent = ParamsEnum;

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
impl ParamsEnum_WithParam {
    pub fn enumerated_one(&self) -> Ref<'_, ParamsEnum_Animal> {
        self.enumerated_one.borrow()
    }
}
impl ParamsEnum_WithParam {
    pub fn set_params(&mut self, enumerated_one: &ParamsEnum_Animal) {
        *self.enumerated_one.borrow_mut() = enumerated_one.clone();
    }
}
impl ParamsEnum_WithParam {
    pub fn is_cat(
        &self
    ) -> KResult<Ref<'_, bool>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_is_cat.get() {
            return Ok(self.is_cat.borrow());
        }
        self.f_is_cat.set(true);
        *self.is_cat.borrow_mut() = (*self.enumerated_one() == ParamsEnum_Animal::Cat) as bool;
        Ok(self.is_cat.borrow())
    }
}
impl ParamsEnum_WithParam {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
