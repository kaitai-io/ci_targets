<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatEosTermStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatEosTermStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_records = [];
            $this->_m_records = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m__raw_records[] = $this->_io->readBytesTerm(178, true, true, true);
                $_io__raw_records = new \Kaitai\Struct\Stream(end($this->_m__raw_records));
                $this->_m_records[] = new \Kaitai\Struct\Tests\RepeatEosTermStruct\BytesWrapper($_io__raw_records, $this, $this->_root);
                $i++;
            }
        }
        protected $_m_records;
        protected $_m__raw_records;
        public function records() { return $this->_m_records; }
        public function _raw_records() { return $this->_m__raw_records; }
    }
}

namespace Kaitai\Struct\Tests\RepeatEosTermStruct {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\RepeatEosTermStruct $_parent = null, ?\Kaitai\Struct\Tests\RepeatEosTermStruct $_root = null) {
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
