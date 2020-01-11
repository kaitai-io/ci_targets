<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests;

class DebugSwitchUser extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\DebugSwitchUser $_root = null) {
        parent::__construct($_io, $_parent, $_root);
    }

    public function _read() {
        $this->_m_code = $this->_io->readU1();
        switch ($this->code()) {
            case 1:
                $this->_m_data = new \Kaitai\Struct\Tests\DebugSwitchUser\One($this->_io, $this, $this->_root);
                $this->_m_data->_read();
                break;
            case 2:
                $this->_m_data = new \Kaitai\Struct\Tests\DebugSwitchUser\Two($this->_io, $this, $this->_root);
                $this->_m_data->_read();
                break;
        }
    }
    protected $_m_code;
    protected $_m_data;
    public function code() { return $this->_m_code; }
    public function data() { return $this->_m_data; }
}

namespace Kaitai\Struct\Tests\DebugSwitchUser;

class One extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DebugSwitchUser $_parent = null, \Kaitai\Struct\Tests\DebugSwitchUser $_root = null) {
        parent::__construct($_io, $_parent, $_root);
    }

    public function _read() {
        $this->_m_val = $this->_io->readS2le();
    }
    protected $_m_val;
    public function val() { return $this->_m_val; }
}

namespace Kaitai\Struct\Tests\DebugSwitchUser;

class Two extends \Kaitai\Struct\Struct {
    public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\DebugSwitchUser $_parent = null, \Kaitai\Struct\Tests\DebugSwitchUser $_root = null) {
        parent::__construct($_io, $_parent, $_root);
    }

    public function _read() {
        $this->_m_val = $this->_io->readU2le();
    }
    protected $_m_val;
    public function val() { return $this->_m_val; }
}
