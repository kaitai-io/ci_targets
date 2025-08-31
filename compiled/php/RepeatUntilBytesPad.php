<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilBytesPad extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilBytesPad $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_records = [];
            $i = 0;
            do {
                $_ = \Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(5), 170);
                $this->_m_records[] = $_;
                $i++;
            } while (!(strlen($_) == 5));
        }
        protected $_m_records;
        public function records() { return $this->_m_records; }
    }
}
