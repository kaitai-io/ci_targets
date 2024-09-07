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
pub struct NestedTypeParam {
    pub _root: SharedType<NestedTypeParam>,
    pub _parent: SharedType<NestedTypeParam>,
    pub _self: SharedType<Self>,
    main_seq: RefCell<OptRc<NestedTypeParam_Nested_MyType>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypeParam {
    type Root = NestedTypeParam;
    type Parent = NestedTypeParam;

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
        let f = |t : &mut NestedTypeParam_Nested_MyType| Ok(t.set_params((5).try_into().map_err(|_| KError::CastError)?));
        let t = Self::read_into_with_init::<_, NestedTypeParam_Nested_MyType>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()), &f)?.into();
        *self_rc.main_seq.borrow_mut() = t;
        Ok(())
    }
}
impl NestedTypeParam {
}
impl NestedTypeParam {
    pub fn main_seq(&self) -> Ref<OptRc<NestedTypeParam_Nested_MyType>> {
        self.main_seq.borrow()
    }
}
impl NestedTypeParam {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypeParam_Nested {
    pub _root: SharedType<NestedTypeParam>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypeParam_Nested {
    type Root = NestedTypeParam;
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
impl NestedTypeParam_Nested {
}
impl NestedTypeParam_Nested {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct NestedTypeParam_Nested_MyType {
    pub _root: SharedType<NestedTypeParam>,
    pub _parent: SharedType<NestedTypeParam>,
    pub _self: SharedType<Self>,
    my_len: RefCell<u32>,
    body: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for NestedTypeParam_Nested_MyType {
    type Root = NestedTypeParam;
    type Parent = NestedTypeParam;

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
        *self_rc.body.borrow_mut() = bytes_to_str(&_io.read_bytes(*self_rc.my_len() as usize)?.into(), "ASCII")?;
        Ok(())
    }
}
impl NestedTypeParam_Nested_MyType {
    pub fn my_len(&self) -> Ref<u32> {
        self.my_len.borrow()
    }
}
impl NestedTypeParam_Nested_MyType {
    pub fn set_params(&mut self, my_len: u32) {
        *self.my_len.borrow_mut() = my_len;
    }
}
impl NestedTypeParam_Nested_MyType {
}
impl NestedTypeParam_Nested_MyType {
    pub fn body(&self) -> Ref<String> {
        self.body.borrow()
    }
}
impl NestedTypeParam_Nested_MyType {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
