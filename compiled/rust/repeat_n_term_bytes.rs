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
pub struct RepeatNTermBytes {
    pub _root: SharedType<RepeatNTermBytes>,
    pub _parent: SharedType<RepeatNTermBytes>,
    pub _self: SharedType<Self>,
    records1: RefCell<Vec<Vec<u8>>>,
    records2: RefCell<Vec<Vec<u8>>>,
    records3: RefCell<Vec<Vec<u8>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatNTermBytes {
    type Root = RepeatNTermBytes;
    type Parent = RepeatNTermBytes;

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
        *self_rc.records1.borrow_mut() = Vec::new();
        let l_records1 = 2;
        for _i in 0..l_records1 {
            self_rc.records1.borrow_mut().push(_io.read_bytes_term(170, false, true, true)?.into());
        }
        *self_rc.records2.borrow_mut() = Vec::new();
        let l_records2 = 2;
        for _i in 0..l_records2 {
            self_rc.records2.borrow_mut().push(_io.read_bytes_term(170, true, true, true)?.into());
        }
        *self_rc.records3.borrow_mut() = Vec::new();
        let l_records3 = 2;
        for _i in 0..l_records3 {
            self_rc.records3.borrow_mut().push(_io.read_bytes_term(85, false, false, true)?.into());
        }
        Ok(())
    }
}
impl RepeatNTermBytes {
}
impl RepeatNTermBytes {
    pub fn records1(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records1.borrow()
    }
}
impl RepeatNTermBytes {
    pub fn records2(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records2.borrow()
    }
}
impl RepeatNTermBytes {
    pub fn records3(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records3.borrow()
    }
}
impl RepeatNTermBytes {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
