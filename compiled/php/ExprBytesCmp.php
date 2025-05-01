<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprBytesCmp extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprBytesCmp $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readBytes(1);
            $this->_m_two = $this->_io->readBytes(3);
        }
        protected $_m_ack;
        public function ack() {
            if ($this->_m_ack !== null)
                return $this->_m_ack;
            $this->_m_ack = "\x41\x43\x4B";
            return $this->_m_ack;
        }
        protected $_m_ack2;
        public function ack2() {
            if ($this->_m_ack2 !== null)
                return $this->_m_ack2;
            $this->_m_ack2 = "\x41\x43\x4B\x32";
            return $this->_m_ack2;
        }
        protected $_m_hiVal;
        public function hiVal() {
            if ($this->_m_hiVal !== null)
                return $this->_m_hiVal;
            $this->_m_hiVal = "\x90\x43";
            return $this->_m_hiVal;
        }
        protected $_m_isEq;
        public function isEq() {
            if ($this->_m_isEq !== null)
                return $this->_m_isEq;
            $this->_m_isEq = $this->two() == $this->ack();
            return $this->_m_isEq;
        }
        protected $_m_isGe;
        public function isGe() {
            if ($this->_m_isGe !== null)
                return $this->_m_isGe;
            $this->_m_isGe = $this->two() >= $this->ack2();
            return $this->_m_isGe;
        }
        protected $_m_isGt;
        public function isGt() {
            if ($this->_m_isGt !== null)
                return $this->_m_isGt;
            $this->_m_isGt = $this->two() > $this->ack2();
            return $this->_m_isGt;
        }
        protected $_m_isGt2;
        public function isGt2() {
            if ($this->_m_isGt2 !== null)
                return $this->_m_isGt2;
            $this->_m_isGt2 = $this->hiVal() > $this->two();
            return $this->_m_isGt2;
        }
        protected $_m_isLe;
        public function isLe() {
            if ($this->_m_isLe !== null)
                return $this->_m_isLe;
            $this->_m_isLe = $this->two() <= $this->ack2();
            return $this->_m_isLe;
        }
        protected $_m_isLt;
        public function isLt() {
            if ($this->_m_isLt !== null)
                return $this->_m_isLt;
            $this->_m_isLt = $this->two() < $this->ack2();
            return $this->_m_isLt;
        }
        protected $_m_isLt2;
        public function isLt2() {
            if ($this->_m_isLt2 !== null)
                return $this->_m_isLt2;
            $this->_m_isLt2 = $this->one() < $this->two();
            return $this->_m_isLt2;
        }
        protected $_m_isNe;
        public function isNe() {
            if ($this->_m_isNe !== null)
                return $this->_m_isNe;
            $this->_m_isNe = $this->two() != $this->ack();
            return $this->_m_isNe;
        }
        protected $_m_one;
        protected $_m_two;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
    }
}
