<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsCircularB extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ImportsCircularB $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_initial = $this->_io->readU1();
            if ($this->initial() == 65) {
                $this->_m_backRef = new \Kaitai\Struct\Tests\ImportsCircularA($this->_io);
            }
        }
        protected $_m_initial;
        protected $_m_backRef;
        public function initial() { return $this->_m_initial; }
        public function backRef() { return $this->_m_backRef; }
    }
}
