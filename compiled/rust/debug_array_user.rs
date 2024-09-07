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
pub struct DebugArrayUser {
    pub _root: SharedType<DebugArrayUser>,
    pub _parent: SharedType<DebugArrayUser>,
    pub _self: SharedType<Self>,
    one_cat: RefCell<OptRc<DebugArrayUser_Cat>>,
    array_of_cats: RefCell<Vec<OptRc<DebugArrayUser_Cat>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DebugArrayUser {
    type Root = DebugArrayUser;
    type Parent = DebugArrayUser;

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
        let t = Self::read_into::<_, DebugArrayUser_Cat>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
        *self_rc.one_cat.borrow_mut() = t;
        *self_rc.array_of_cats.borrow_mut() = Vec::new();
        let l_array_of_cats = 3;
        for _i in 0..l_array_of_cats {
            let t = Self::read_into::<_, DebugArrayUser_Cat>(&*_io, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
            let _t_array_of_cats = t;
            self_rc.array_of_cats.borrow_mut().push(_t_array_of_cats);
        }
        Ok(())
    }
}
impl DebugArrayUser {
}
impl DebugArrayUser {
    pub fn one_cat(&self) -> Ref<OptRc<DebugArrayUser_Cat>> {
        self.one_cat.borrow()
    }
}
impl DebugArrayUser {
    pub fn array_of_cats(&self) -> Ref<Vec<OptRc<DebugArrayUser_Cat>>> {
        self.array_of_cats.borrow()
    }
}
impl DebugArrayUser {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct DebugArrayUser_Cat {
    pub _root: SharedType<DebugArrayUser>,
    pub _parent: SharedType<DebugArrayUser>,
    pub _self: SharedType<Self>,
    meow: RefCell<u8>,
    _io: RefCell<BytesReader>,
}
impl KStruct for DebugArrayUser_Cat {
    type Root = DebugArrayUser;
    type Parent = DebugArrayUser;

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
        *self_rc.meow.borrow_mut() = _io.read_u1()?.into();
        Ok(())
    }
}
impl DebugArrayUser_Cat {
}
impl DebugArrayUser_Cat {
    pub fn meow(&self) -> Ref<u8> {
        self.meow.borrow()
    }
}
impl DebugArrayUser_Cat {
    pub fn _io(&self) -> Ref<BytesReader> {
        self._io.borrow()
    }
}
