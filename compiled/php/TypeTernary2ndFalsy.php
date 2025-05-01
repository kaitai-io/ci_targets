<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TypeTernary2ndFalsy extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TypeTernary2ndFalsy $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_intTruthy = $this->_io->readU1();
            $this->_m_ut = new \Kaitai\Struct\Tests\TypeTernary2ndFalsy\Foo($this->_io, $this, $this->_root);
            $this->_m_intArray = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_intArray[] = $this->_io->readU1();
            }
            $this->_m_intArrayEmpty = [];
            $n = 0;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_intArrayEmpty[] = $this->_io->readU1();
            }
        }
        protected $_m_nullUt;
        public function nullUt() {
            if ($this->_m_nullUt !== null)
                return $this->_m_nullUt;
            if (false) {
                $this->_m_nullUt = $this->ut();
            }
            return $this->_m_nullUt;
        }
        protected $_m_t;
        public function t() {
            if ($this->_m_t !== null)
                return $this->_m_t;
            $this->_m_t = true;
            return $this->_m_t;
        }
        protected $_m_vFalse;
        public function vFalse() {
            if ($this->_m_vFalse !== null)
                return $this->_m_vFalse;
            $this->_m_vFalse = ($this->t() ? false : true);
            return $this->_m_vFalse;
        }
        protected $_m_vFloatNegZero;
        public function vFloatNegZero() {
            if ($this->_m_vFloatNegZero !== null)
                return $this->_m_vFloatNegZero;
            $this->_m_vFloatNegZero = ($this->t() ? -0.0 : -2.72);
            return $this->_m_vFloatNegZero;
        }
        protected $_m_vFloatZero;
        public function vFloatZero() {
            if ($this->_m_vFloatZero !== null)
                return $this->_m_vFloatZero;
            $this->_m_vFloatZero = ($this->t() ? 0.0 : 3.14);
            return $this->_m_vFloatZero;
        }
        protected $_m_vIntArrayEmpty;
        public function vIntArrayEmpty() {
            if ($this->_m_vIntArrayEmpty !== null)
                return $this->_m_vIntArrayEmpty;
            $this->_m_vIntArrayEmpty = ($this->t() ? $this->intArrayEmpty() : $this->intArray());
            return $this->_m_vIntArrayEmpty;
        }
        protected $_m_vIntNegZero;
        public function vIntNegZero() {
            if ($this->_m_vIntNegZero !== null)
                return $this->_m_vIntNegZero;
            $this->_m_vIntNegZero = ($this->t() ? 0 : -20);
            return $this->_m_vIntNegZero;
        }
        protected $_m_vIntZero;
        public function vIntZero() {
            if ($this->_m_vIntZero !== null)
                return $this->_m_vIntZero;
            $this->_m_vIntZero = ($this->t() ? 0 : 10);
            return $this->_m_vIntZero;
        }
        protected $_m_vNullUt;
        public function vNullUt() {
            if ($this->_m_vNullUt !== null)
                return $this->_m_vNullUt;
            $this->_m_vNullUt = ($this->t() ? $this->nullUt() : $this->ut());
            return $this->_m_vNullUt;
        }
        protected $_m_vStrEmpty;
        public function vStrEmpty() {
            if ($this->_m_vStrEmpty !== null)
                return $this->_m_vStrEmpty;
            $this->_m_vStrEmpty = ($this->t() ? "" : "kaitai");
            return $this->_m_vStrEmpty;
        }
        protected $_m_vStrWZero;
        public function vStrWZero() {
            if ($this->_m_vStrWZero !== null)
                return $this->_m_vStrWZero;
            $this->_m_vStrWZero = ($this->t() ? "0" : "30");
            return $this->_m_vStrWZero;
        }
        protected $_m_intTruthy;
        protected $_m_ut;
        protected $_m_intArray;
        protected $_m_intArrayEmpty;
        public function intTruthy() { return $this->_m_intTruthy; }
        public function ut() { return $this->_m_ut; }
        public function intArray() { return $this->_m_intArray; }
        public function intArrayEmpty() { return $this->_m_intArrayEmpty; }
    }
}

namespace Kaitai\Struct\Tests\TypeTernary2ndFalsy {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\TypeTernary2ndFalsy $_parent = null, ?\Kaitai\Struct\Tests\TypeTernary2ndFalsy $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_m = $this->_io->readU1();
        }
        protected $_m_m;
        public function m() { return $this->_m_m; }
    }
}
