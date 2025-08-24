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
pub struct MultipleUse {
    pub _root: SharedType<MultipleUse>,
    pub _parent: SharedType<MultipleUse>,
    pub _self: SharedType<Self>,
    t1: RefCell<OptRc<MultipleUse_Type1>>,
    t2: RefCell<OptRc<MultipleUse_Type2>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for MultipleUse {
    type Root = MultipleUse;
    type Parent = MultipleUse;

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
        let t = Self::read_into::<_, MultipleUse_Type1>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.t1.borrow_mut() = t;
        let t = Self::read_into::<_, MultipleUse_Type2>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.t2.borrow_mut() = t;
        Ok(())
    }
}
impl MultipleUse {
}
impl MultipleUse {
    pub fn t1(&self) -> Ref<'_, OptRc<MultipleUse_Type1>> {
        self.t1.borrow()
    }
}
impl MultipleUse {
    pub fn t2(&self) -> Ref<'_, OptRc<MultipleUse_Type2>> {
        self.t2.borrow()
    }
}
impl MultipleUse {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct MultipleUse_Multi {
    pub _root: SharedType<MultipleUse>,
    pub _parent: SharedType<KStructUnit>,
    pub _self: SharedType<Self>,
    value: RefCell<i32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for MultipleUse_Multi {
    type Root = MultipleUse;
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
        *self_rc.value.borrow_mut() = _io.read_s4le()?.into();
        Ok(())
    }
}
impl MultipleUse_Multi {
}
impl MultipleUse_Multi {
    pub fn value(&self) -> Ref<'_, i32> {
        self.value.borrow()
    }
}
impl MultipleUse_Multi {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct MultipleUse_Type1 {
    pub _root: SharedType<MultipleUse>,
    pub _parent: SharedType<MultipleUse>,
    pub _self: SharedType<Self>,
    first_use: RefCell<OptRc<MultipleUse_Multi>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for MultipleUse_Type1 {
    type Root = MultipleUse;
    type Parent = MultipleUse;

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
        let t = Self::read_into::<_, MultipleUse_Multi>(&*_io, Some(self_rc._root.clone()), None)?.into();
        *self_rc.first_use.borrow_mut() = t;
        Ok(())
    }
}
impl MultipleUse_Type1 {
}
impl MultipleUse_Type1 {
    pub fn first_use(&self) -> Ref<'_, OptRc<MultipleUse_Multi>> {
        self.first_use.borrow()
    }
}
impl MultipleUse_Type1 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct MultipleUse_Type2 {
    pub _root: SharedType<MultipleUse>,
    pub _parent: SharedType<MultipleUse>,
    pub _self: SharedType<Self>,
    _io: RefCell<BytesReader>,
    f_second_use: Cell<bool>,
    second_use: RefCell<OptRc<MultipleUse_Multi>>,
}
impl KStruct for MultipleUse_Type2 {
    type Root = MultipleUse;
    type Parent = MultipleUse;

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
impl MultipleUse_Type2 {
    pub fn second_use(
        &self
    ) -> KResult<Ref<'_, OptRc<MultipleUse_Multi>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_second_use.get() {
            return Ok(self.second_use.borrow());
        }
        let _pos = _io.pos();
        _io.seek(0 as usize)?;
        let t = Self::read_into::<_, MultipleUse_Multi>(&*_io, Some(self._root.clone()), None)?.into();
        *self.second_use.borrow_mut() = t;
        _io.seek(_pos)?;
        Ok(self.second_use.borrow())
    }
}
impl MultipleUse_Type2 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
