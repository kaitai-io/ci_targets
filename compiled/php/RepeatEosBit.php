<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatEosBit extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatEosBit $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_nibbles = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_nibbles[] = $this->_io->readBitsIntBe(4);
                $i++;
            }
        }
        protected $_m_nibbles;
        public function nibbles() { return $this->_m_nibbles; }
    }
}
