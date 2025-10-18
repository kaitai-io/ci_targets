// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatInst : KaitaiStruct
    {
        public static ValidFailRepeatInst FromFile(string fileName)
        {
            return new ValidFailRepeatInst(new KaitaiStream(fileName));
        }

        public ValidFailRepeatInst(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatInst p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_inst = false;
            _read();
        }
        private void _read()
        {
            if (Inst.Count == 0) {
                _a = m_io.ReadBytes(0);
            }
        }
        public List<uint> Inst
        {
            get
            {
                if (f_inst)
                    return _inst;
                f_inst = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _inst = new List<uint>();
                {
                    var i = 0;
                    while (!m_io.IsEof) {
                        _inst.Add(m_io.ReadU4be());
                        if (!(_inst[i] == 305419896))
                        {
                            throw new ValidationNotEqualError(305419896, _inst[i], m_io, "/instances/inst");
                        }
                        i++;
                    }
                }
                m_io.Seek(_pos);
                return _inst;
            }
        }
        public byte[] A { get { return _a; } }
        public ValidFailRepeatInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_inst;
        private List<uint> _inst;
        private byte[] _a;
        private ValidFailRepeatInst m_root;
        private KaitaiStruct m_parent;
    }
}
