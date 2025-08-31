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
pub struct ParamsPassIo {
    pub _root: SharedType<ParamsPassIo>,
    pub _parent: SharedType<ParamsPassIo>,
    pub _self: SharedType<Self>,
    first: RefCell<OptRc<ParamsPassIo_Block>>,
    one: RefCell<OptRc<ParamsPassIo_ParamType>>,
    _io: RefCell<BytesReader>,
    first_raw: RefCell<Vec<u8>>,
}
impl KStruct for ParamsPassIo {
    type Root = ParamsPassIo;
    type Parent = ParamsPassIo;

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
        let t = Self::read_into::<BytesReader, ParamsPassIo_Block>(&_t_first_raw_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.first.borrow_mut() = t;
        let f = |t : &mut ParamsPassIo_ParamType| Ok(t.set_params(if *self_rc.first().foo() == 255 { self_rc.first()._io() } else { _r._io() }));
        let t = Self::read_into_with_init::<_, ParamsPassIo_ParamType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.one.borrow_mut() = t;
        Ok(())
    }
}
impl ParamsPassIo {
}
impl ParamsPassIo {
    pub fn first(&self) -> Ref<'_, OptRc<ParamsPassIo_Block>> {
        self.first.borrow()
    }
}
impl ParamsPassIo {
    pub fn one(&self) -> Ref<'_, OptRc<ParamsPassIo_ParamType>> {
        self.one.borrow()
    }
}
impl ParamsPassIo {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ParamsPassIo {
    pub fn first_raw(&self) -> Ref<'_, Vec<u8>> {
        self.first_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassIo_Block {
    pub _root: SharedType<ParamsPassIo>,
    pub _parent: SharedType<ParamsPassIo>,
    pub _self: SharedType<Self>,
    foo: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassIo_Block {
    type Root = ParamsPassIo;
    type Parent = ParamsPassIo;

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
impl ParamsPassIo_Block {
}
impl ParamsPassIo_Block {
    pub fn foo(&self) -> Ref<'_, u8> {
        self.foo.borrow()
    }
}
impl ParamsPassIo_Block {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct ParamsPassIo_ParamType {
    pub _root: SharedType<ParamsPassIo>,
    pub _parent: SharedType<ParamsPassIo>,
    pub _self: SharedType<Self>,
    arg_stream: RefCell<BytesReader>,
    buf: RefCell<Vec<u8>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for ParamsPassIo_ParamType {
    type Root = ParamsPassIo;
    type Parent = ParamsPassIo;

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
        *self_rc.buf.borrow_mut() = _io.read_bytes(self_rc.arg_stream().size() as usize)?.into();
        Ok(())
    }
}
impl ParamsPassIo_ParamType {
    pub fn arg_stream(&self) -> Ref<'_, BytesReader> {
        self.arg_stream.borrow()
    }
}
impl ParamsPassIo_ParamType {
    pub fn set_params(&mut self, arg_stream: BytesReader) {
        *self.arg_stream.borrow_mut() = arg_stream;
    }
}
impl ParamsPassIo_ParamType {
}
impl ParamsPassIo_ParamType {
    pub fn buf(&self) -> Ref<'_, Vec<u8>> {
        self.buf.borrow()
    }
}
impl ParamsPassIo_ParamType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
