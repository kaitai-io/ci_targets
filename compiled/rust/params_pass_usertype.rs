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
pub struct ParamsPassUsertype {
    pub _root: SharedType<ParamsPassUsertype>,
    pub _parent: SharedType<ParamsPassUsertype>,
    pub _self: SharedType<Self>,
    first: RefCell<OptRc<ParamsPassUsertype_Block>>,
    one: RefCell<OptRc<ParamsPassUsertype_ParamType>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassUsertype {
    type Root = ParamsPassUsertype;
    type Parent = ParamsPassUsertype;

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
        let t = Self::read_into::<_, ParamsPassUsertype_Block>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.first.borrow_mut() = t;
        let f = |t : &mut ParamsPassUsertype_ParamType| Ok(t.set_params(&*self_rc.first()));
        let t = Self::read_into_with_init::<_, ParamsPassUsertype_ParamType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassUsertype {
}
impl ParamsPassUsertype {
    pub fn first(&self) -> Ref<'_, OptRc<ParamsPassUsertype_Block>> {
        self.first.borrow()
    }
}
impl ParamsPassUsertype {
    pub fn one(&self) -> Ref<'_, OptRc<ParamsPassUsertype_ParamType>> {
        self.one.borrow()
    }
}
impl ParamsPassUsertype {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassUsertype_Block {
    pub _root: SharedType<ParamsPassUsertype>,
    pub _parent: SharedType<ParamsPassUsertype>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassUsertype_Block {
    type Root = ParamsPassUsertype;
    type Parent = ParamsPassUsertype;

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
        *self_rc.foo.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl ParamsPassUsertype_Block {
}
impl ParamsPassUsertype_Block {
    pub fn foo(&self) -> Ref<'_, u8> {
        self.foo.borrow()
    }
}
impl ParamsPassUsertype_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassUsertype_ParamType {
    pub _root: SharedType<ParamsPassUsertype>,
    pub _parent: SharedType<ParamsPassUsertype>,
    pub _self: SharedType<Self>,
    foo: RefCell<OptRc<ParamsPassUsertype_Block>>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassUsertype_ParamType {
    type Root = ParamsPassUsertype;
    type Parent = ParamsPassUsertype;

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
        *self_rc.buf.borrow_mut() = _io.read_bytes(*self_rc.foo().foo() as usize)?.into();
        Ok(())
    }
}
impl ParamsPassUsertype_ParamType {
    pub fn foo(&self) -> Ref<'_, OptRc<ParamsPassUsertype_Block>> {
        self.foo.borrow()
    }
}
impl ParamsPassUsertype_ParamType {
    pub fn set_params(&mut self, foo: &OptRc<ParamsPassUsertype_Block>) {
        *self.foo.borrow_mut() = foo.clone();
    }
}
impl ParamsPassUsertype_ParamType {
}
impl ParamsPassUsertype_ParamType {
    pub fn buf(&self) -> Ref<'_, Vec<u8>> {
        self.buf.borrow()
    }
}
impl ParamsPassUsertype_ParamType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
