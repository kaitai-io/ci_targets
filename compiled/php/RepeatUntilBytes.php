<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_records = [];
            $i = 0;
            do {
                $_ = $this->_io->readBytes(5);
                $this->_m_records[] = $_;
                $i++;
            } while (!(ord($_[0]) == 170));
        }
        public function records() { return $this->_m_records; }
        protected $_m_records;
    }
}
