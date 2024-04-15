<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprStrOps extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprStrOps $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(5), "ASCII");
        }
        protected $_m_oneLen;
        public function oneLen() {
            if ($this->_m_oneLen !== null)
                return $this->_m_oneLen;
            $this->_m_oneLen = strlen($this->one());
            return $this->_m_oneLen;
        }
        protected $_m_oneRev;
        public function oneRev() {
            if ($this->_m_oneRev !== null)
                return $this->_m_oneRev;
            $this->_m_oneRev = strrev($this->one());
            return $this->_m_oneRev;
        }
        protected $_m_oneSubstr0To3;
        public function oneSubstr0To3() {
            if ($this->_m_oneSubstr0To3 !== null)
                return $this->_m_oneSubstr0To3;
            $this->_m_oneSubstr0To3 = \Kaitai\Struct\Stream::substring($this->one(), 0, 3);
            return $this->_m_oneSubstr0To3;
        }
        protected $_m_oneSubstr2To5;
        public function oneSubstr2To5() {
            if ($this->_m_oneSubstr2To5 !== null)
                return $this->_m_oneSubstr2To5;
            $this->_m_oneSubstr2To5 = \Kaitai\Struct\Stream::substring($this->one(), 2, 5);
            return $this->_m_oneSubstr2To5;
        }
        protected $_m_oneSubstr3To3;
        public function oneSubstr3To3() {
            if ($this->_m_oneSubstr3To3 !== null)
                return $this->_m_oneSubstr3To3;
            $this->_m_oneSubstr3To3 = \Kaitai\Struct\Stream::substring($this->one(), 3, 3);
            return $this->_m_oneSubstr3To3;
        }
        protected $_m_toIAttr;
        public function toIAttr() {
            if ($this->_m_toIAttr !== null)
                return $this->_m_toIAttr;
            $this->_m_toIAttr = intval("9173", 10);
            return $this->_m_toIAttr;
        }
        protected $_m_toIR10;
        public function toIR10() {
            if ($this->_m_toIR10 !== null)
                return $this->_m_toIR10;
            $this->_m_toIR10 = intval("-072", 10);
            return $this->_m_toIR10;
        }
        protected $_m_toIR16;
        public function toIR16() {
            if ($this->_m_toIR16 !== null)
                return $this->_m_toIR16;
            $this->_m_toIR16 = intval("47cf", 16);
            return $this->_m_toIR16;
        }
        protected $_m_toIR2;
        public function toIR2() {
            if ($this->_m_toIR2 !== null)
                return $this->_m_toIR2;
            $this->_m_toIR2 = intval("1010110", 2);
            return $this->_m_toIR2;
        }
        protected $_m_toIR8;
        public function toIR8() {
            if ($this->_m_toIR8 !== null)
                return $this->_m_toIR8;
            $this->_m_toIR8 = intval("721", 8);
            return $this->_m_toIR8;
        }
        protected $_m_two;
        public function two() {
            if ($this->_m_two !== null)
                return $this->_m_two;
            $this->_m_two = "0123456789";
            return $this->_m_two;
        }
        protected $_m_twoLen;
        public function twoLen() {
            if ($this->_m_twoLen !== null)
                return $this->_m_twoLen;
            $this->_m_twoLen = strlen($this->two());
            return $this->_m_twoLen;
        }
        protected $_m_twoRev;
        public function twoRev() {
            if ($this->_m_twoRev !== null)
                return $this->_m_twoRev;
            $this->_m_twoRev = strrev($this->two());
            return $this->_m_twoRev;
        }
        protected $_m_twoSubstr0To10;
        public function twoSubstr0To10() {
            if ($this->_m_twoSubstr0To10 !== null)
                return $this->_m_twoSubstr0To10;
            $this->_m_twoSubstr0To10 = \Kaitai\Struct\Stream::substring($this->two(), 0, 10);
            return $this->_m_twoSubstr0To10;
        }
        protected $_m_twoSubstr0To7;
        public function twoSubstr0To7() {
            if ($this->_m_twoSubstr0To7 !== null)
                return $this->_m_twoSubstr0To7;
            $this->_m_twoSubstr0To7 = \Kaitai\Struct\Stream::substring($this->two(), 0, 7);
            return $this->_m_twoSubstr0To7;
        }
        protected $_m_twoSubstr4To10;
        public function twoSubstr4To10() {
            if ($this->_m_twoSubstr4To10 !== null)
                return $this->_m_twoSubstr4To10;
            $this->_m_twoSubstr4To10 = \Kaitai\Struct\Stream::substring($this->two(), 4, 10);
            return $this->_m_twoSubstr4To10;
        }
        protected $_m_one;
        public function one() { return $this->_m_one; }
    }
}
