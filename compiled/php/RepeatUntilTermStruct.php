<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilTermStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilTermStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_records1 = [];
            $this->_m_records1 = [];
            $i = 0;
            do {
                $_buf = $this->_io->readBytesTerm(170, false, true, true);
                $this->_m__raw_records1[] = $_buf;
                $_io__raw_records1 = new \Kaitai\Struct\Stream($_buf);
                $_ = new \Kaitai\Struct\Tests\RepeatUntilTermStruct\BytesWrapper($_io__raw_records1, $this, $this->_root);
                $this->_m_records1[] = $_;
                $i++;
            } while (!(strlen($_->value()) == 0));
            $this->_m__raw_records2 = [];
            $this->_m_records2 = [];
            $i = 0;
            do {
                $_buf = $this->_io->readBytesTerm(170, true, true, true);
                $this->_m__raw_records2[] = $_buf;
                $_io__raw_records2 = new \Kaitai\Struct\Stream($_buf);
                $_ = new \Kaitai\Struct\Tests\RepeatUntilTermStruct\BytesWrapper($_io__raw_records2, $this, $this->_root);
                $this->_m_records2[] = $_;
                $i++;
            } while (!($_->value() != "\xAA"));
            $this->_m__raw_records3 = [];
            $this->_m_records3 = [];
            $i = 0;
            do {
                $_buf = $this->_io->readBytesTerm(85, false, false, true);
                $this->_m__raw_records3[] = $_buf;
                $_io__raw_records3 = new \Kaitai\Struct\Stream($_buf);
                $_ = new \Kaitai\Struct\Tests\RepeatUntilTermStruct\BytesWrapper($_io__raw_records3, $this, $this->_root);
                $this->_m_records3[] = $_;
                $i++;
            } while (!($_->value() == $this->records1()[count($this->records1()) - 1]->value()));
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

namespace Kaitai\Struct\Tests\RepeatUntilTermStruct {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\RepeatUntilTermStruct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilTermStruct $_root = null) {
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
