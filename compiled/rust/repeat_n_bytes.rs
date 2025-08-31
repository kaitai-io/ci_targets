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
pub struct RepeatNBytes {
    pub _root: SharedType<RepeatNBytes>,
    pub _parent: SharedType<RepeatNBytes>,
    pub _self: SharedType<Self>,
    records: RefCell<Vec<Vec<u8>>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatNBytes {
    type Root = RepeatNBytes;
    type Parent = RepeatNBytes;

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
        *self_rc.records.borrow_mut() = Vec::new();
        let l_records = 3;
        for _i in 0..l_records {
            self_rc.records.borrow_mut().push(_io.read_bytes(5 as usize)?.into());
        }
        Ok(())
    }
}
impl RepeatNBytes {
}
impl RepeatNBytes {
    pub fn records(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records.borrow()
    }
}
impl RepeatNBytes {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
