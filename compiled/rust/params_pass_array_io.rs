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
pub struct ParamsPassArrayIo {
    pub _root: SharedType<ParamsPassArrayIo>,
    pub _parent: SharedType<ParamsPassArrayIo>,
    pub _self: SharedType<Self>,
    first: RefCell<OptRc<ParamsPassArrayIo_Block>>,
    one: RefCell<OptRc<ParamsPassArrayIo_ParamType>>,
    _io: RefCell<BytesReader>,
    first_raw: RefCell<Vec<u8>>,
}
impl KStruct for ParamsPassArrayIo {
    type Root = ParamsPassArrayIo;
    type Parent = ParamsPassArrayIo;

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
        *self_rc.first_raw.borrow_mut() = _io.read_bytes(1 as usize)?.into();
        let first_raw = self_rc.first_raw.borrow();
        let _t_first_raw_io = BytesReader::from(first_raw.clone());
        let t = Self::read_into::<BytesReader, ParamsPassArrayIo_Block>(&_t_first_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.first.borrow_mut() = t;
        let f = |t : &mut ParamsPassArrayIo_ParamType| Ok(t.set_params(&vec![self_rc.first()._io(), _r._io()]));
        let t = Self::read_into_with_init::<_, ParamsPassArrayIo_ParamType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassArrayIo {
}
impl ParamsPassArrayIo {
    pub fn first(&self) -> Ref<'_, OptRc<ParamsPassArrayIo_Block>> {
        self.first.borrow()
    }
}
impl ParamsPassArrayIo {
    pub fn one(&self) -> Ref<'_, OptRc<ParamsPassArrayIo_ParamType>> {
        self.one.borrow()
    }
}
impl ParamsPassArrayIo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ParamsPassArrayIo {
    pub fn first_raw(&self) -> Ref<'_, Vec<u8>> {
        self.first_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayIo_Block {
    pub _root: SharedType<ParamsPassArrayIo>,
    pub _parent: SharedType<ParamsPassArrayIo>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayIo_Block {
    type Root = ParamsPassArrayIo;
    type Parent = ParamsPassArrayIo;

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
impl ParamsPassArrayIo_Block {
}
impl ParamsPassArrayIo_Block {
    pub fn foo(&self) -> Ref<'_, u8> {
        self.foo.borrow()
    }
}
impl ParamsPassArrayIo_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassArrayIo_ParamType {
    pub _root: SharedType<ParamsPassArrayIo>,
    pub _parent: SharedType<ParamsPassArrayIo>,
    pub _self: SharedType<Self>,
    arg_streams: RefCell<Vec<BytesReader>>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassArrayIo_ParamType {
    type Root = ParamsPassArrayIo;
    type Parent = ParamsPassArrayIo;

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
        *self_rc.buf.borrow_mut() = _io.read_bytes(self_rc.arg_streams()[0 as usize].size() as usize)?.into();
        Ok(())
    }
}
impl ParamsPassArrayIo_ParamType {
    pub fn arg_streams(&self) -> Ref<'_, Vec<BytesReader>> {
        self.arg_streams.borrow()
    }
}
impl ParamsPassArrayIo_ParamType {
    pub fn set_params(&mut self, arg_streams: &Vec<BytesReader>) {
        *self.arg_streams.borrow_mut() = arg_streams.clone();
    }
}
impl ParamsPassArrayIo_ParamType {
}
impl ParamsPassArrayIo_ParamType {
    pub fn buf(&self) -> Ref<'_, Vec<u8>> {
        self.buf.borrow()
    }
}
impl ParamsPassArrayIo_ParamType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
