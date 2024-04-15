<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatNStruct extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\RepeatNStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_qty = $this->_io->readU4le();
            $this->_m_chunks = [];
            $n = $this->qty();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_chunks[] = new \Kaitai\Struct\Tests\RepeatNStruct\Chunk($this->_io, $this, $this->_root);
            }
        }
        protected $_m_qty;
        protected $_m_chunks;
        public function qty() { return $this->_m_qty; }
        public function chunks() { return $this->_m_chunks; }
    }
}

namespace Kaitai\Struct\Tests\RepeatNStruct {
    class Chunk extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\RepeatNStruct $_parent = null, \Kaitai\Struct\Tests\RepeatNStruct $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_offset = $this->_io->readU4le();
            $this->_m_len = $this->_io->readU4le();
        }
        protected $_m_offset;
        protected $_m_len;
        public function offset() { return $this->_m_offset; }
        public function len() { return $this->_m_len; }
    }
}
