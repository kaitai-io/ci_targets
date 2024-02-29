<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Expr3 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\Expr3 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
            $this->_m_two = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(3), "ASCII");
        }
        protected $_m_four;
        public function four() {
            if ($this->_m_four !== null)
                return $this->_m_four;
            $this->_m_four = "_" . $this->two() . "_";
            return $this->_m_four;
        }
        protected $_m_isStrEq;
        public function isStrEq() {
            if ($this->_m_isStrEq !== null)
                return $this->_m_isStrEq;
            $this->_m_isStrEq = $this->two() == "ACK";
            return $this->_m_isStrEq;
        }
        protected $_m_isStrGe;
        public function isStrGe() {
            if ($this->_m_isStrGe !== null)
                return $this->_m_isStrGe;
            $this->_m_isStrGe = $this->two() >= "ACK2";
            return $this->_m_isStrGe;
        }
        protected $_m_isStrGt;
        public function isStrGt() {
            if ($this->_m_isStrGt !== null)
                return $this->_m_isStrGt;
            $this->_m_isStrGt = $this->two() > "ACK2";
            return $this->_m_isStrGt;
        }
        protected $_m_isStrLe;
        public function isStrLe() {
            if ($this->_m_isStrLe !== null)
                return $this->_m_isStrLe;
            $this->_m_isStrLe = $this->two() <= "ACK2";
            return $this->_m_isStrLe;
        }
        protected $_m_isStrLt;
        public function isStrLt() {
            if ($this->_m_isStrLt !== null)
                return $this->_m_isStrLt;
            $this->_m_isStrLt = $this->two() < "ACK2";
            return $this->_m_isStrLt;
        }
        protected $_m_isStrLt2;
        public function isStrLt2() {
            if ($this->_m_isStrLt2 !== null)
                return $this->_m_isStrLt2;
            $this->_m_isStrLt2 = $this->three() < $this->two();
            return $this->_m_isStrLt2;
        }
        protected $_m_isStrNe;
        public function isStrNe() {
            if ($this->_m_isStrNe !== null)
                return $this->_m_isStrNe;
            $this->_m_isStrNe = $this->two() != "ACK";
            return $this->_m_isStrNe;
        }
        protected $_m_testNot;
        public function testNot() {
            if ($this->_m_testNot !== null)
                return $this->_m_testNot;
            $this->_m_testNot = !(false);
            return $this->_m_testNot;
        }
        protected $_m_three;
        public function three() {
            if ($this->_m_three !== null)
                return $this->_m_three;
            $this->_m_three = "@" . $this->two();
            return $this->_m_three;
        }
        protected $_m_one;
        protected $_m_two;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
    }
}
