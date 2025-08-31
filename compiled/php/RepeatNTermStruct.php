<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatNTermStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatNTermStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_records1 = [];
            $this->_m_records1 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw_records1[] = $this->_io->readBytesTerm(170, false, true, true);
                $_io__raw_records1 = new \Kaitai\Struct\Stream(end($this->_m__raw_records1));
                $this->_m_records1[] = new \Kaitai\Struct\Tests\RepeatNTermStruct\BytesWrapper($_io__raw_records1, $this, $this->_root);
            }
            $this->_m__raw_records2 = [];
            $this->_m_records2 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw_records2[] = $this->_io->readBytesTerm(170, true, true, true);
                $_io__raw_records2 = new \Kaitai\Struct\Stream(end($this->_m__raw_records2));
                $this->_m_records2[] = new \Kaitai\Struct\Tests\RepeatNTermStruct\BytesWrapper($_io__raw_records2, $this, $this->_root);
            }
            $this->_m__raw_records3 = [];
            $this->_m_records3 = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m__raw_records3[] = $this->_io->readBytesTerm(85, false, false, true);
                $_io__raw_records3 = new \Kaitai\Struct\Stream(end($this->_m__raw_records3));
                $this->_m_records3[] = new \Kaitai\Struct\Tests\RepeatNTermStruct\BytesWrapper($_io__raw_records3, $this, $this->_root);
            }
        }
        protected $_m_records1;
        protected $_m_records2;
        protected $_m_records3;
        protected $_m__raw_records1;
        protected $_m__raw_records2;
        protected $_m__raw_records3;
        public function records1() { return $this->_m_records1; }
        public function records2() { return $this->_m_records2; }
        public function records3() { return $this->_m_records3; }
        public function _raw_records1() { return $this->_m__raw_records1; }
        public function _raw_records2() { return $this->_m__raw_records2; }
        public function _raw_records3() { return $this->_m__raw_records3; }
    }
}

namespace Kaitai\Struct\Tests\RepeatNTermStruct {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\RepeatNTermStruct $_parent = null, ?\Kaitai\Struct\Tests\RepeatNTermStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytesFull();
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
