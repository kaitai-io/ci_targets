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
pub struct IndexSizes {
    pub _root: SharedType<IndexSizes>,
    pub _parent: SharedType<IndexSizes>,
    pub _self: SharedType<Self>,
    qty: RefCell<u32>,
    sizes: RefCell<Vec<u32>>,
    bufs: RefCell<Vec<String>>,
    _io: RefCell<BytesReader>,
}
impl KStruct for IndexSizes {
    type Root = IndexSizes;
    type Parent = IndexSizes;

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
        *self_rc.qty.borrow_mut() = _io.read_u4le()?.into();
        *self_rc.sizes.borrow_mut() = Vec::new();
        let l_sizes = *self_rc.qty();
        for _i in 0..l_sizes {
            self_rc.sizes.borrow_mut().push(_io.read_u4le()?.into());
        }
        *self_rc.bufs.borrow_mut() = Vec::new();
        let l_bufs = *self_rc.qty();
        for _i in 0..l_bufs {
            self_rc.bufs.borrow_mut().push(bytes_to_str(&_io.read_bytes(self_rc.sizes()[_i as usize] as usize)?.into(), "ASCII")?);
        }
        Ok(())
    }
}
impl IndexSizes {
}
impl IndexSizes {
    pub fn qty(&self) -> Ref<'_, u32> {
        self.qty.borrow()
    }
}
impl IndexSizes {
    pub fn sizes(&self) -> Ref<'_, Vec<u32>> {
        self.sizes.borrow()
    }
}
impl IndexSizes {
    pub fn bufs(&self) -> Ref<'_, Vec<String>> {
        self.bufs.borrow()
    }
}
impl IndexSizes {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
