<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ImportsParamsDefArrayUsertypeImported extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ImportsParamsDefArrayUsertypeImported $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_hws = [];
            $n = 2;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_hws[] = new \Kaitai\Struct\Tests\HelloWorld($this->_io);
            }
            $this->_m_two = new \Kaitai\Struct\Tests\ParamsDefArrayUsertypeImported($this->hws(), $this->_io);
        }
        protected $_m_hws;
        protected $_m_two;
        public function hws() { return $this->_m_hws; }
        public function two() { return $this->_m_two; }
    }
}
