// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBitsB1 : KaitaiStruct
    {
        public static RepeatEosBitsB1 FromFile(string fileName)
        {
            return new RepeatEosBitsB1(new KaitaiStream(fileName));
        }

        public RepeatEosBitsB1(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBitsB1 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _bits = new List<bool>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _bits.Add(m_io.ReadBitsIntBe(1) != 0);
                    i++;
                }
            }
        }
        public List<bool> Bits { get { return _bits; } }
        public RepeatEosBitsB1 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<bool> _bits;
        private RepeatEosBitsB1 m_root;
        private KaitaiStruct m_parent;
    }
}
