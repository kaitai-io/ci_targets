// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatEosBit : KaitaiStruct
    {
        public static RepeatEosBit FromFile(string fileName)
        {
            return new RepeatEosBit(new KaitaiStream(fileName));
        }

        public RepeatEosBit(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatEosBit p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _nibbles = new List<ulong>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _nibbles.Add(m_io.ReadBitsIntBe(4));
                    i++;
                }
            }
        }
        private List<ulong> _nibbles;
        private RepeatEosBit m_root;
        private KaitaiStruct m_parent;
        public List<ulong> Nibbles { get { return _nibbles; } }
        public RepeatEosBit M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
