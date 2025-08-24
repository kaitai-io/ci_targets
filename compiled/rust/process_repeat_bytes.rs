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
pub struct ProcessRepeatBytes {
    pub _root: SharedType<ProcessRepeatBytes>,
    pub _parent: SharedType<ProcessRepeatBytes>,
    pub _self: SharedType<Self>,
    bufs: RefCell<Vec<Vec<u8>>>,
    _io: RefCell<BytesReader>,
    bufs_raw: RefCell<Vec<Vec<u8>>>,
}
impl KStruct for ProcessRepeatBytes {
    type Root = ProcessRepeatBytes;
    type Parent = ProcessRepeatBytes;

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
        *self_rc.bufs_raw.borrow_mut() = Vec::new();
        *self_rc.bufs.borrow_mut() = Vec::new();
        let l_bufs = 2;
        for _i in 0..l_bufs {
            self_rc.bufs_raw.borrow_mut().push(_io.read_bytes(5 as usize)?.into());
            self_rc.bufs.borrow_mut().push(process_xor_one(&self_rc.bufs_raw.borrow()[self_rc.bufs_raw.borrow().len() - 1], 158));
        }
        Ok(())
    }
}
impl ProcessRepeatBytes {
}
impl ProcessRepeatBytes {
    pub fn bufs(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.bufs.borrow()
    }
}
impl ProcessRepeatBytes {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl ProcessRepeatBytes {
    pub fn bufs_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.bufs_raw.borrow()
    }
}
