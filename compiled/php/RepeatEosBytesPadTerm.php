<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatEosBytesPadTerm extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatEosBytesPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_records = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_records[] = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(5), 170), 85, true);
                $i++;
            }
        }
        protected $_m_records;
        public function records() { return $this->_m_records; }
    }
}
